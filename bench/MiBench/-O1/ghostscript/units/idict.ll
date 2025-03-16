; ModuleID = 'idict.c'
source_filename = "idict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.dict_s = type { %struct.ref_s, %struct.ref_s, %struct.ref_s, %struct.ref_s }
%struct.name_s = type { i16, i16, ptr, ptr }

@dict_max_size = dso_local local_unnamed_addr constant i32 65534, align 4
@dict_auto_expand = dso_local local_unnamed_addr global i32 0, align 4
@dict_default_pack = dso_local local_unnamed_addr global i32 1, align 4
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@.str = private unnamed_addr constant [12 x i8] c"dict_create\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"dict_unpack(keys)\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"dict_unpack(old keys)\00", align 1
@d_stack = external global %struct.ref_stack_s, align 8
@min_dstack_size = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"dict_put(key)\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"dict_put(count)\00", align 1
@ref_systemdict = external local_unnamed_addr global %struct.ref_s, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"dict_put(value)\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"dict_undef(key)\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"dict_undef(count)\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"dict_undef(value)\00", align 1
@dtop_keys = dso_local local_unnamed_addr global ptr null, align 8
@dtop_npairs = dso_local local_unnamed_addr global i32 0, align 4
@dtop_values = dso_local local_unnamed_addr global ptr null, align 8
@no_packed_keys = internal constant [2 x i16] [i16 24577, i16 24576], align 2
@dsspace = dso_local local_unnamed_addr global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"dict_resize(values)\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"dict_resize(old values)\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"dict_resize(keys)\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"dict_resize(old keys)\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"dict_resize(maxlength)\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"dict_put(maxlength)\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"dict_create(values)\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"dict_create(packed keys)\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"dict create unpacked keys\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @dict_round_size_small(i32 noundef %0) local_unnamed_addr #0 {
  %2 = icmp ugt i32 %0, 65534
  %3 = select i1 %2, i32 0, i32 %0
  ret i32 %3
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @dict_round_size_large(i32 noundef %0) local_unnamed_addr #1 {
  %2 = icmp ugt i32 %0, 32768
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = icmp ugt i32 %0, 65534
  %5 = select i1 %4, i32 0, i32 %0
  br label %17

6:                                                ; preds = %1, %10
  %7 = phi i32 [ %13, %10 ], [ %0, %1 ]
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7), !range !5
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = add i32 %7, -1
  %12 = or i32 %11, %7
  %13 = add i32 %12, 1
  br label %6, !llvm.loop !6

14:                                               ; preds = %6
  %15 = icmp ult i32 %7, 65535
  %16 = select i1 %15, i32 %7, i32 32768
  br label %17

17:                                               ; preds = %14, %3
  %18 = phi i32 [ %5, %3 ], [ %16, %14 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_create(i32 noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = alloca %struct.ref_s, align 8
  %4 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %5 = load ptr, ptr @gs_imemory, align 8, !tbaa !8
  %6 = call i32 @gs_alloc_ref_array(ptr noundef %5, ptr noundef nonnull %3, i32 noundef 112, i32 noundef 4, ptr noundef nonnull @.str) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !14
  %12 = load i16, ptr %3, align 8, !tbaa !15
  %13 = and i16 %12, 12
  %14 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !19
  %15 = trunc i32 %14 to i16
  %16 = or i16 %13, %15
  %17 = or i16 %16, 112
  %18 = add i16 %17, 512
  store i16 %18, ptr %4, align 8, !tbaa !15
  %19 = load i32, ptr @dict_default_pack, align 4, !tbaa !20
  %20 = call fastcc i32 @dict_create_contents(i32 noundef %0, ptr noundef nonnull %4, i32 noundef %19)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !21
  br label %23

23:                                               ; preds = %8, %2, %22
  %24 = phi i32 [ 0, %22 ], [ %6, %2 ], [ %20, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  ret i32 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dict_create_contents(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = alloca %struct.ref_s, align 8
  %5 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  %8 = icmp ugt i32 %0, 32768
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = icmp ugt i32 %0, 65534
  %11 = select i1 %10, i32 0, i32 %7
  br label %23

12:                                               ; preds = %3, %16
  %13 = phi i32 [ %19, %16 ], [ %7, %3 ]
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13), !range !5
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = add i32 %13, -1
  %18 = or i32 %17, %13
  %19 = add i32 %18, 1
  br label %12, !llvm.loop !6

20:                                               ; preds = %12
  %21 = icmp ult i32 %13, 65535
  %22 = select i1 %21, i32 %13, i32 32768
  br label %23

23:                                               ; preds = %9, %20
  %24 = phi i32 [ %11, %9 ], [ %22, %20 ]
  %25 = add i32 %24, -65535
  %26 = icmp ult i32 %25, -65534
  br i1 %26, label %103, label %27

27:                                               ; preds = %23
  %28 = add nuw nsw i32 %24, 1
  %29 = load ptr, ptr @gs_imemory, align 8, !tbaa !8
  %30 = tail call i32 @gs_alloc_ref_array(ptr noundef %29, ptr noundef %6, i32 noundef 112, i32 noundef %28, ptr noundef nonnull @.str.15) #10
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %103, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !19
  %34 = load i16, ptr %6, align 8, !tbaa !28
  %35 = trunc i32 %33 to i16
  %36 = or i16 %34, %35
  store i16 %36, ptr %6, align 8, !tbaa !28
  %37 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !14
  tail call void @refset_null(ptr noundef %38, i32 noundef %28) #10
  %39 = icmp eq i32 %2, 0
  br i1 %39, label %70, label %40

40:                                               ; preds = %32
  %41 = add nuw nsw i32 %24, 8
  %42 = lshr i32 %41, 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %43 = load ptr, ptr @gs_imemory, align 8, !tbaa !8
  %44 = call i32 @gs_alloc_ref_array(ptr noundef %43, ptr noundef nonnull %4, i32 noundef 112, i32 noundef %42, ptr noundef nonnull @.str.16) #10
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %46, label %101

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !14
  %49 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 1
  %50 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 1, i32 1
  store ptr %48, ptr %50, align 8, !tbaa !14
  %51 = load i16, ptr %4, align 8, !tbaa !15
  %52 = and i16 %51, 12
  %53 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !19
  %54 = trunc i32 %53 to i16
  %55 = or i16 %52, %54
  %56 = or i16 %55, 112
  %57 = add i16 %56, 1536
  store i16 %57, ptr %49, align 8, !tbaa !30
  %58 = trunc i32 %28 to i16
  %59 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 1, i32 0, i32 1
  store i16 %58, ptr %59, align 2, !tbaa !31
  br label %60

60:                                               ; preds = %46, %60
  %61 = phi ptr [ %48, %46 ], [ %63, %60 ]
  %62 = phi i32 [ 0, %46 ], [ %64, %60 ]
  store i16 24576, ptr %61, align 2, !tbaa !22
  %63 = getelementptr inbounds i16, ptr %61, i64 1
  %64 = add i32 %62, 1
  %65 = icmp ule i32 %64, %24
  %66 = and i32 %64, 7
  %67 = icmp ne i32 %66, 0
  %68 = or i1 %65, %67
  br i1 %68, label %60, label %69, !llvm.loop !32

69:                                               ; preds = %60
  store i16 24577, ptr %48, align 2, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br label %89

70:                                               ; preds = %32
  %71 = load ptr, ptr %5, align 8, !tbaa !14
  %72 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !33
  %73 = load i16, ptr %1, align 8, !tbaa !15
  %74 = and i16 %73, 12
  %75 = zext nneg i16 %74 to i32
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %75) #10
  %76 = load ptr, ptr @gs_imemory, align 8, !tbaa !8
  %77 = getelementptr inbounds %struct.dict_s, ptr %71, i64 0, i32 1
  %78 = tail call i32 @gs_alloc_ref_array(ptr noundef %76, ptr noundef nonnull %77, i32 noundef 112, i32 noundef %28, ptr noundef nonnull @.str.17) #10
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %102

80:                                               ; preds = %70
  %81 = getelementptr inbounds %struct.dict_s, ptr %71, i64 0, i32 1, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !14
  %83 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !19
  %84 = load i16, ptr %77, align 8, !tbaa !30
  %85 = trunc i32 %83 to i16
  %86 = or i16 %84, %85
  store i16 %86, ptr %77, align 8, !tbaa !30
  tail call void @refset_null(ptr noundef %82, i32 noundef %28) #10
  %87 = load i16, ptr %82, align 8, !tbaa !15
  %88 = or i16 %87, 128
  store i16 %88, ptr %82, align 8, !tbaa !15
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %72) #10
  br label %89

89:                                               ; preds = %80, %69
  %90 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 2
  %91 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 2, i32 1
  store i64 0, ptr %91, align 8, !tbaa !14
  %92 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !19
  %93 = trunc i32 %92 to i16
  %94 = add i16 %93, 2816
  store i16 %94, ptr %90, align 8, !tbaa !34
  %95 = zext i32 %0 to i64
  %96 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 3
  %97 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 3, i32 1
  store i64 %95, ptr %97, align 8, !tbaa !14
  %98 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !19
  %99 = trunc i32 %98 to i16
  %100 = add i16 %99, 2816
  store i16 %100, ptr %96, align 8, !tbaa !35
  br label %103

101:                                              ; preds = %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br label %103

102:                                              ; preds = %70
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %72) #10
  br label %103

103:                                              ; preds = %102, %101, %27, %23, %89
  %104 = phi i32 [ 0, %89 ], [ -13, %23 ], [ %30, %27 ], [ %44, %101 ], [ %78, %102 ]
  ret i32 %104
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_unpack(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ref_s, align 8
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.dict_s, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds i8, ptr %4, i64 17
  %7 = load i8, ptr %6, align 1, !tbaa !14
  %8 = icmp eq i8 %7, 6
  br i1 %8, label %9, label %109

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tas_s, ptr %4, i64 0, i32 1
  %11 = load i16, ptr %10, align 2, !tbaa !36
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.dict_s, ptr %4, i64 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !21
  %15 = load i16, ptr %2, align 8, !tbaa !15
  %16 = zext i16 %15 to i32
  %17 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !37
  %18 = and i32 %17, %16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %9
  %21 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull @.str.1) #10
  br label %22

22:                                               ; preds = %20, %9
  %23 = load ptr, ptr %3, align 8, !tbaa !14
  %24 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !33
  %25 = load i16, ptr %0, align 8, !tbaa !15
  %26 = and i16 %25, 12
  %27 = zext nneg i16 %26 to i32
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %27) #10
  %28 = load ptr, ptr @gs_imemory, align 8, !tbaa !8
  %29 = getelementptr inbounds %struct.dict_s, ptr %23, i64 0, i32 1
  %30 = tail call i32 @gs_alloc_ref_array(ptr noundef %28, ptr noundef nonnull %29, i32 noundef 112, i32 noundef %12, ptr noundef nonnull @.str.17) #10
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %106

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.dict_s, ptr %23, i64 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  %35 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !19
  %36 = load i16, ptr %29, align 8, !tbaa !30
  %37 = trunc i32 %35 to i16
  %38 = or i16 %36, %37
  store i16 %38, ptr %29, align 8, !tbaa !30
  tail call void @refset_null(ptr noundef %34, i32 noundef %12) #10
  %39 = load i16, ptr %34, align 8, !tbaa !15
  %40 = or i16 %39, 128
  store i16 %40, ptr %34, align 8, !tbaa !15
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %24) #10
  %41 = icmp eq i16 %11, 0
  br i1 %41, label %67, label %42

42:                                               ; preds = %32
  %43 = load ptr, ptr %13, align 8, !tbaa !14
  br label %44

44:                                               ; preds = %42, %63
  %45 = phi i32 [ %48, %63 ], [ %12, %42 ]
  %46 = phi ptr [ %65, %63 ], [ %43, %42 ]
  %47 = phi ptr [ %64, %63 ], [ %14, %42 ]
  %48 = add nsw i32 %45, -1
  %49 = load i16, ptr %47, align 2, !tbaa !22
  %50 = icmp ugt i16 %49, -16385
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  tail call void @packed_get(ptr noundef nonnull %47, ptr noundef %46) #10
  %52 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !19
  %53 = load i16, ptr %46, align 8, !tbaa !15
  %54 = trunc i32 %52 to i16
  %55 = or i16 %53, %54
  br label %61

56:                                               ; preds = %44
  %57 = icmp eq i16 %49, 24577
  br i1 %57, label %58, label %63

58:                                               ; preds = %56
  %59 = load i16, ptr %46, align 8, !tbaa !15
  %60 = or i16 %59, 128
  br label %61

61:                                               ; preds = %58, %51
  %62 = phi i16 [ %55, %51 ], [ %60, %58 ]
  store i16 %62, ptr %46, align 8, !tbaa !15
  br label %63

63:                                               ; preds = %61, %56
  %64 = getelementptr inbounds i16, ptr %47, i64 1
  %65 = getelementptr inbounds %struct.ref_s, ptr %46, i64 1
  %66 = icmp eq i32 %48, 0
  br i1 %66, label %67, label %44, !llvm.loop !38

67:                                               ; preds = %63, %32
  %68 = load i16, ptr %2, align 8, !tbaa !15
  %69 = zext i16 %68 to i32
  %70 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !37
  %71 = and i32 %70, %69
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = load ptr, ptr @gs_imemory, align 8, !tbaa !8
  call void @gs_free_ref_array(ptr noundef %74, ptr noundef nonnull %2, ptr noundef nonnull @.str.2) #10
  br label %75

75:                                               ; preds = %73, %67
  %76 = load ptr, ptr @d_stack, align 8, !tbaa !39
  %77 = getelementptr inbounds %struct.ref_s, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !14
  %79 = getelementptr inbounds i8, ptr %78, i64 17
  %80 = load i8, ptr %79, align 1, !tbaa !14
  %81 = icmp eq i8 %80, 6
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = load i16, ptr %78, align 8, !tbaa !28
  %84 = and i16 %83, 32
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.dict_s, ptr %78, i64 0, i32 1, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !14
  store ptr %88, ptr @dtop_keys, align 8, !tbaa !27
  %89 = getelementptr inbounds %struct.tas_s, ptr %78, i64 0, i32 1
  %90 = load i16, ptr %89, align 2, !tbaa !36
  %91 = zext i16 %90 to i32
  %92 = add nsw i32 %91, -1
  store i32 %92, ptr @dtop_npairs, align 4, !tbaa !20
  %93 = getelementptr inbounds %struct.ref_s, ptr %78, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !14
  store ptr %94, ptr @dtop_values, align 8, !tbaa !27
  br label %96

95:                                               ; preds = %82, %75
  store ptr @no_packed_keys, ptr @dtop_keys, align 8, !tbaa !27
  store i32 1, ptr @dtop_npairs, align 4, !tbaa !20
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i16, ptr %78, align 8, !tbaa !28
  %98 = and i16 %97, 16
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i16, ptr %76, align 8, !tbaa !15
  %102 = and i16 %101, 12
  %103 = zext nneg i16 %102 to i32
  br label %104

104:                                              ; preds = %96, %100
  %105 = phi i32 [ %103, %100 ], [ -1, %96 ]
  store i32 %105, ptr @dsspace, align 4, !tbaa !20
  br label %107

106:                                              ; preds = %22
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %24) #10
  br label %107

107:                                              ; preds = %106, %104
  %108 = phi i32 [ %30, %106 ], [ 0, %104 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  br label %109

109:                                              ; preds = %107, %1
  %110 = phi i32 [ 0, %1 ], [ %108, %107 ]
  ret i32 %110
}

declare i32 @alloc_save_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @packed_get(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gs_free_ref_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @dict_set_top() local_unnamed_addr #6 {
  %1 = load ptr, ptr @d_stack, align 8, !tbaa !39
  %2 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = getelementptr inbounds i8, ptr %3, i64 17
  %5 = load i8, ptr %4, align 1, !tbaa !14
  %6 = icmp eq i8 %5, 6
  br i1 %6, label %7, label %20

7:                                                ; preds = %0
  %8 = load i16, ptr %3, align 8, !tbaa !28
  %9 = and i16 %8, 32
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.dict_s, ptr %3, i64 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  store ptr %13, ptr @dtop_keys, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct.tas_s, ptr %3, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !36
  %16 = zext i16 %15 to i32
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr @dtop_npairs, align 4, !tbaa !20
  %18 = getelementptr inbounds %struct.ref_s, ptr %3, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  store ptr %19, ptr @dtop_values, align 8, !tbaa !27
  br label %21

20:                                               ; preds = %7, %0
  store ptr @no_packed_keys, ptr @dtop_keys, align 8, !tbaa !27
  store i32 1, ptr @dtop_npairs, align 4, !tbaa !20
  br label %21

21:                                               ; preds = %20, %11
  %22 = load i16, ptr %3, align 8, !tbaa !28
  %23 = and i16 %22, 16
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i16, ptr %1, align 8, !tbaa !15
  %27 = and i16 %26, 12
  %28 = zext nneg i16 %27 to i32
  br label %29

29:                                               ; preds = %21, %25
  %30 = phi i32 [ %28, %25 ], [ -1, %21 ]
  store i32 %30, ptr @dsspace, align 4, !tbaa !20
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_find(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ref_s, align 8
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.tas_s, ptr %6, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !36
  %9 = zext i16 %8 to i32
  %10 = add nsw i32 %9, -1
  %11 = getelementptr inbounds i8, ptr %1, i64 1
  %12 = load i8, ptr %11, align 1, !tbaa !14
  switch i8 %12, label %47 [
    i8 13, label %13
    i8 18, label %22
    i8 11, label %42
    i8 14, label %258
  ]

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %15 = load i16, ptr %14, align 2, !tbaa !41
  %16 = zext i16 %15 to i32
  br label %17

17:                                               ; preds = %38, %13
  %18 = phi i32 [ %40, %38 ], [ %16, %13 ]
  %19 = icmp ult i32 %18, 4096
  %20 = add i32 %18, 49152
  %21 = select i1 %19, i32 %20, i32 0
  br label %53

22:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %23 = load i16, ptr %1, align 8, !tbaa !15
  %24 = and i16 %23, 32
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %30 = load i16, ptr %29, align 2, !tbaa !41
  %31 = zext i16 %30 to i32
  %32 = call i32 @name_ref(ptr noundef %28, i32 noundef %31, ptr noundef nonnull %4, i32 noundef 1) #10
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.tas_s, ptr %4, i64 0, i32 1
  %36 = load i16, ptr %35, align 2, !tbaa !41
  %37 = zext i16 %36 to i32
  br label %38

38:                                               ; preds = %26, %22, %34
  %39 = phi i1 [ true, %34 ], [ false, %22 ], [ false, %26 ]
  %40 = phi i32 [ %37, %34 ], [ undef, %22 ], [ undef, %26 ]
  %41 = phi i32 [ undef, %34 ], [ -7, %22 ], [ %32, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br i1 %39, label %17, label %258

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !14
  %45 = trunc i64 %44 to i32
  %46 = mul i32 %45, 30503
  br label %53

47:                                               ; preds = %3
  %48 = zext i8 %12 to i32
  %49 = load i16, ptr %1, align 8, !tbaa !15
  %50 = icmp ugt i16 %49, 5375
  %51 = mul nuw nsw i32 %48, 99
  %52 = select i1 %50, i32 1485, i32 %51
  br label %53

53:                                               ; preds = %47, %42, %17
  %54 = phi i32 [ %52, %47 ], [ %46, %42 ], [ %18, %17 ]
  %55 = phi i32 [ -1, %47 ], [ -1, %42 ], [ 13, %17 ]
  %56 = phi i32 [ 0, %47 ], [ 0, %42 ], [ %21, %17 ]
  %57 = phi i32 [ 0, %47 ], [ 0, %42 ], [ %18, %17 ]
  %58 = getelementptr inbounds i8, ptr %6, i64 17
  %59 = load i8, ptr %58, align 1, !tbaa !14
  %60 = icmp eq i8 %59, 6
  %61 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 1, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !14
  %63 = icmp ugt i32 %10, 32768
  br i1 %60, label %64, label %172

64:                                               ; preds = %53
  br i1 %63, label %65, label %67

65:                                               ; preds = %64
  %66 = urem i32 %54, %10
  br label %70

67:                                               ; preds = %64
  %68 = add nsw i32 %9, -2
  %69 = and i32 %54, %68
  br label %70

70:                                               ; preds = %67, %65
  %71 = phi i32 [ %66, %65 ], [ %69, %67 ]
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i16, ptr %62, i64 %72
  %74 = getelementptr inbounds i16, ptr %73, i64 1
  %75 = trunc i32 %56 to i16
  %76 = load i16, ptr %74, align 2, !tbaa !22
  %77 = icmp eq i16 %76, %75
  br i1 %77, label %78, label %87

78:                                               ; preds = %99, %70
  %79 = phi ptr [ %74, %70 ], [ %101, %99 ]
  %80 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !14
  %82 = ptrtoint ptr %79 to i64
  %83 = ptrtoint ptr %62 to i64
  %84 = sub i64 %82, %83
  %85 = ashr exact i64 %84, 1
  %86 = getelementptr inbounds %struct.ref_s, ptr %81, i64 %85
  br label %255

87:                                               ; preds = %70, %99
  %88 = phi i16 [ %102, %99 ], [ %76, %70 ]
  %89 = phi ptr [ %101, %99 ], [ %74, %70 ]
  %90 = phi ptr [ %100, %99 ], [ null, %70 ]
  %91 = icmp ugt i16 %88, -16385
  br i1 %91, label %99, label %92

92:                                               ; preds = %87
  %93 = icmp eq i16 %88, 24576
  br i1 %93, label %152, label %94

94:                                               ; preds = %92
  %95 = icmp eq ptr %89, %62
  br i1 %95, label %104, label %96

96:                                               ; preds = %94
  %97 = icmp eq ptr %90, null
  %98 = select i1 %97, ptr %89, ptr %90
  br label %99

99:                                               ; preds = %96, %87
  %100 = phi ptr [ %90, %87 ], [ %98, %96 ]
  %101 = getelementptr inbounds i16, ptr %89, i64 -1
  %102 = load i16, ptr %101, align 2, !tbaa !22
  %103 = icmp eq i16 %102, %75
  br i1 %103, label %78, label %87, !llvm.loop !42

104:                                              ; preds = %94
  %105 = zext i32 %10 to i64
  %106 = getelementptr inbounds i16, ptr %89, i64 %105
  %107 = load i16, ptr %106, align 2, !tbaa !22
  %108 = icmp eq i16 %107, %75
  br i1 %108, label %109, label %118

109:                                              ; preds = %130, %104
  %110 = phi ptr [ %106, %104 ], [ %132, %130 ]
  %111 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !14
  %113 = ptrtoint ptr %110 to i64
  %114 = ptrtoint ptr %62 to i64
  %115 = sub i64 %113, %114
  %116 = ashr exact i64 %115, 1
  %117 = getelementptr inbounds %struct.ref_s, ptr %112, i64 %116
  br label %255

118:                                              ; preds = %104, %130
  %119 = phi i16 [ %133, %130 ], [ %107, %104 ]
  %120 = phi ptr [ %132, %130 ], [ %106, %104 ]
  %121 = phi ptr [ %131, %130 ], [ %90, %104 ]
  %122 = icmp ugt i16 %119, -16385
  br i1 %122, label %130, label %123

123:                                              ; preds = %118
  %124 = icmp eq i16 %119, 24576
  br i1 %124, label %152, label %125

125:                                              ; preds = %123
  %126 = icmp eq ptr %120, %62
  %127 = icmp eq ptr %121, null
  br i1 %126, label %135, label %128

128:                                              ; preds = %125
  %129 = select i1 %127, ptr %120, ptr %121
  br label %130

130:                                              ; preds = %128, %118
  %131 = phi ptr [ %121, %118 ], [ %129, %128 ]
  %132 = getelementptr inbounds i16, ptr %120, i64 -1
  %133 = load i16, ptr %132, align 2, !tbaa !22
  %134 = icmp eq i16 %133, %75
  br i1 %134, label %109, label %118, !llvm.loop !43

135:                                              ; preds = %125
  br i1 %127, label %258, label %136

136:                                              ; preds = %135
  %137 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 2, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !14
  %139 = trunc i64 %138 to i32
  %140 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 3, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !14
  %142 = trunc i64 %141 to i32
  %143 = icmp eq i32 %139, %142
  br i1 %143, label %258, label %144

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !14
  %147 = ptrtoint ptr %121 to i64
  %148 = ptrtoint ptr %62 to i64
  %149 = sub i64 %147, %148
  %150 = ashr exact i64 %149, 1
  %151 = getelementptr inbounds %struct.ref_s, ptr %146, i64 %150
  br label %255

152:                                              ; preds = %92, %123
  %153 = phi ptr [ %121, %123 ], [ %90, %92 ]
  %154 = phi ptr [ %120, %123 ], [ %89, %92 ]
  %155 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 2, i32 1
  %156 = load i64, ptr %155, align 8, !tbaa !14
  %157 = trunc i64 %156 to i32
  %158 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 3, i32 1
  %159 = load i64, ptr %158, align 8, !tbaa !14
  %160 = trunc i64 %159 to i32
  %161 = icmp eq i32 %157, %160
  br i1 %161, label %258, label %162

162:                                              ; preds = %152
  %163 = icmp eq ptr %153, null
  %164 = select i1 %163, ptr %154, ptr %153
  %165 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !14
  %167 = ptrtoint ptr %164 to i64
  %168 = ptrtoint ptr %62 to i64
  %169 = sub i64 %167, %168
  %170 = ashr exact i64 %169, 1
  %171 = getelementptr inbounds %struct.ref_s, ptr %166, i64 %170
  br label %255

172:                                              ; preds = %53
  br i1 %63, label %173, label %175

173:                                              ; preds = %172
  %174 = urem i32 %54, %10
  br label %178

175:                                              ; preds = %172
  %176 = add nsw i32 %9, -2
  %177 = and i32 %54, %176
  br label %178

178:                                              ; preds = %175, %173
  %179 = phi i32 [ %174, %173 ], [ %177, %175 ]
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.ref_s, ptr %62, i64 %180
  %182 = getelementptr inbounds %struct.ref_s, ptr %181, i64 2
  %183 = zext i16 %8 to i64
  br label %184

184:                                              ; preds = %224, %178
  %185 = phi ptr [ %193, %224 ], [ %182, %178 ]
  %186 = phi ptr [ %226, %224 ], [ null, %178 ]
  %187 = phi i32 [ %190, %224 ], [ 0, %178 ]
  br label %188

188:                                              ; preds = %184, %218
  %189 = phi ptr [ %185, %184 ], [ %219, %218 ]
  %190 = phi i32 [ %187, %184 ], [ 1, %218 ]
  br label %191

191:                                              ; preds = %230, %188
  %192 = phi ptr [ %189, %188 ], [ %193, %230 ]
  %193 = getelementptr inbounds %struct.ref_s, ptr %192, i64 -1
  %194 = getelementptr inbounds i8, ptr %192, i64 -15
  %195 = load i8, ptr %194, align 1, !tbaa !14
  %196 = zext i8 %195 to i32
  %197 = icmp eq i32 %55, %196
  br i1 %197, label %198, label %210

198:                                              ; preds = %191
  %199 = getelementptr %struct.ref_s, ptr %192, i64 -1, i32 0, i32 1
  %200 = load i16, ptr %199, align 2, !tbaa !41
  %201 = zext i16 %200 to i32
  %202 = icmp eq i32 %57, %201
  br i1 %202, label %203, label %230

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !14
  %206 = ptrtoint ptr %193 to i64
  %207 = ptrtoint ptr %62 to i64
  %208 = sub i64 %206, %207
  %209 = getelementptr inbounds i8, ptr %205, i64 %208
  br label %255

210:                                              ; preds = %191
  %211 = icmp eq i8 %195, 14
  br i1 %211, label %212, label %227

212:                                              ; preds = %210
  %213 = icmp eq ptr %193, %62
  br i1 %213, label %214, label %220

214:                                              ; preds = %212
  %215 = icmp eq i32 %190, 0
  br i1 %215, label %218, label %216

216:                                              ; preds = %214
  %217 = icmp eq ptr %186, null
  br i1 %217, label %258, label %238

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.ref_s, ptr %193, i64 %183
  br label %188, !llvm.loop !44

220:                                              ; preds = %212
  %221 = load i16, ptr %193, align 8, !tbaa !15
  %222 = and i16 %221, 128
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %238, label %224

224:                                              ; preds = %220
  %225 = icmp eq ptr %186, null
  %226 = select i1 %225, ptr %193, ptr %186
  br label %184, !llvm.loop !44

227:                                              ; preds = %210
  %228 = call i32 @obj_eq(ptr noundef nonnull %193, ptr noundef %1) #10
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %227, %198
  br label %191, !llvm.loop !44

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !14
  %234 = ptrtoint ptr %193 to i64
  %235 = ptrtoint ptr %62 to i64
  %236 = sub i64 %234, %235
  %237 = getelementptr inbounds i8, ptr %233, i64 %236
  br label %255

238:                                              ; preds = %220, %216
  %239 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 2, i32 1
  %240 = load i64, ptr %239, align 8, !tbaa !14
  %241 = trunc i64 %240 to i32
  %242 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 3, i32 1
  %243 = load i64, ptr %242, align 8, !tbaa !14
  %244 = trunc i64 %243 to i32
  %245 = icmp eq i32 %241, %244
  br i1 %245, label %258, label %246

246:                                              ; preds = %238
  %247 = getelementptr inbounds %struct.ref_s, ptr %6, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !14
  %249 = icmp eq ptr %186, null
  %250 = select i1 %249, ptr %193, ptr %186
  %251 = ptrtoint ptr %250 to i64
  %252 = ptrtoint ptr %62 to i64
  %253 = sub i64 %251, %252
  %254 = getelementptr inbounds i8, ptr %248, i64 %253
  br label %255

255:                                              ; preds = %162, %144, %109, %78, %246, %231, %203
  %256 = phi ptr [ %209, %203 ], [ %237, %231 ], [ %254, %246 ], [ %86, %78 ], [ %117, %109 ], [ %151, %144 ], [ %171, %162 ]
  %257 = phi i32 [ 1, %203 ], [ 1, %231 ], [ 0, %246 ], [ 1, %78 ], [ 1, %109 ], [ 0, %144 ], [ 0, %162 ]
  store ptr %256, ptr %2, align 8, !tbaa !27
  br label %258

258:                                              ; preds = %255, %216, %238, %136, %135, %152, %3, %38
  %259 = phi i32 [ %41, %38 ], [ -20, %3 ], [ -2, %136 ], [ -2, %135 ], [ -2, %152 ], [ -2, %216 ], [ -2, %238 ], [ %257, %255 ]
  ret i32 %259
}

declare i32 @name_ref(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @obj_eq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_find_string(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %6 = trunc i64 %5 to i32
  %7 = call i32 @name_ref(ptr noundef %1, i32 noundef %6, ptr noundef nonnull %4, i32 noundef -1) #10
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = call i32 @dict_find(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2)
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi i32 [ %10, %9 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 %12
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @dict_is_permanent_on_dstack(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = load i32, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 4), align 8, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load i32, ptr @min_dstack_size, align 4, !tbaa !20
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 1), align 8, !tbaa !46
  %11 = zext i32 %7 to i64
  br label %15

12:                                               ; preds = %15
  %13 = add nuw nsw i64 %16, 1
  %14 = icmp eq i64 %13, %11
  br i1 %14, label %37, label %15, !llvm.loop !47

15:                                               ; preds = %9, %12
  %16 = phi i64 [ 0, %9 ], [ %13, %12 ]
  %17 = getelementptr inbounds %struct.ref_s, ptr %10, i64 %16, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = icmp eq ptr %18, %3
  br i1 %19, label %37, label %12

20:                                               ; preds = %1
  %21 = tail call i32 @ref_stack_count(ptr noundef nonnull @d_stack) #10
  %22 = load i32, ptr @min_dstack_size, align 4, !tbaa !20
  %23 = sub i32 %21, %22
  %24 = icmp ult i32 %23, %21
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = sext i32 %23 to i64
  br label %31

27:                                               ; preds = %31
  %28 = add nsw i64 %32, 1
  %29 = trunc i64 %28 to i32
  %30 = icmp ugt i32 %21, %29
  br i1 %30, label %31, label %37, !llvm.loop !48

31:                                               ; preds = %25, %27
  %32 = phi i64 [ %26, %25 ], [ %28, %27 ]
  %33 = tail call ptr @ref_stack_index(ptr noundef nonnull @d_stack, i64 noundef %32) #10
  %34 = getelementptr inbounds %struct.ref_s, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !14
  %36 = icmp eq ptr %35, %3
  br i1 %36, label %37, label %27

37:                                               ; preds = %31, %27, %15, %12, %20, %6
  %38 = phi i32 [ 0, %6 ], [ 0, %20 ], [ 0, %12 ], [ 1, %15 ], [ 0, %27 ], [ 1, %31 ]
  ret i32 %38
}

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #4

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @dict_find_name_by_index(i32 noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ref_s, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @d_stack, align 8, !tbaa !39
  %5 = icmp ult i32 %0, 4096
  %6 = add i32 %0, 49152
  %7 = and i32 %6, 65535
  %8 = select i1 %5, i32 %7, i32 0
  %9 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 1), align 8
  br label %10

10:                                               ; preds = %135, %1
  %11 = phi ptr [ %4, %1 ], [ %136, %135 ]
  %12 = phi ptr [ undef, %1 ], [ %134, %135 ]
  %13 = getelementptr inbounds %struct.ref_s, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = getelementptr inbounds %struct.tas_s, ptr %14, i64 0, i32 1
  %16 = load i16, ptr %15, align 2, !tbaa !36
  %17 = zext i16 %16 to i32
  %18 = add nsw i32 %17, -1
  %19 = getelementptr inbounds i8, ptr %14, i64 17
  %20 = load i8, ptr %19, align 1, !tbaa !14
  %21 = icmp eq i8 %20, 6
  %22 = getelementptr inbounds %struct.dict_s, ptr %14, i64 0, i32 1, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = icmp ugt i32 %18, 32768
  br i1 %21, label %25, label %83

25:                                               ; preds = %10
  br i1 %24, label %26, label %28

26:                                               ; preds = %25
  %27 = urem i32 %0, %18
  br label %31

28:                                               ; preds = %25
  %29 = add nsw i32 %17, -2
  %30 = and i32 %29, %0
  br label %31

31:                                               ; preds = %28, %26
  %32 = phi i32 [ %27, %26 ], [ %30, %28 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i16, ptr %23, i64 %33
  %35 = getelementptr inbounds i16, ptr %34, i64 1
  %36 = load i16, ptr %35, align 2, !tbaa !22
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %8, %37
  br i1 %38, label %71, label %39

39:                                               ; preds = %31, %47
  %40 = phi i16 [ %49, %47 ], [ %36, %31 ]
  %41 = phi ptr [ %48, %47 ], [ %35, %31 ]
  %42 = icmp ugt i16 %40, -16385
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = icmp eq i16 %40, 24576
  br i1 %44, label %80, label %45

45:                                               ; preds = %43
  %46 = icmp eq ptr %41, %23
  br i1 %46, label %52, label %47

47:                                               ; preds = %45, %39
  %48 = getelementptr inbounds i16, ptr %41, i64 -1
  %49 = load i16, ptr %48, align 2, !tbaa !22
  %50 = zext i16 %49 to i32
  %51 = icmp eq i32 %8, %50
  br i1 %51, label %71, label %39, !llvm.loop !49

52:                                               ; preds = %45
  %53 = zext i32 %18 to i64
  %54 = getelementptr inbounds i16, ptr %41, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !22
  %56 = zext i16 %55 to i32
  %57 = icmp eq i32 %8, %56
  br i1 %57, label %71, label %58

58:                                               ; preds = %52, %66
  %59 = phi i16 [ %68, %66 ], [ %55, %52 ]
  %60 = phi ptr [ %67, %66 ], [ %54, %52 ]
  %61 = icmp ugt i16 %59, -16385
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = icmp eq i16 %59, 24576
  %64 = icmp eq ptr %60, %23
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %80, label %66

66:                                               ; preds = %62, %58
  %67 = getelementptr inbounds i16, ptr %60, i64 -1
  %68 = load i16, ptr %67, align 2, !tbaa !22
  %69 = zext i16 %68 to i32
  %70 = icmp eq i32 %8, %69
  br i1 %70, label %71, label %58, !llvm.loop !50

71:                                               ; preds = %47, %66, %52, %31
  %72 = phi ptr [ %35, %31 ], [ %54, %52 ], [ %67, %66 ], [ %48, %47 ]
  %73 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !14
  %75 = ptrtoint ptr %72 to i64
  %76 = ptrtoint ptr %23 to i64
  %77 = sub i64 %75, %76
  %78 = ashr exact i64 %77, 1
  %79 = getelementptr inbounds %struct.ref_s, ptr %74, i64 %78
  br label %80

80:                                               ; preds = %43, %62, %71
  %81 = phi i1 [ false, %71 ], [ true, %62 ], [ true, %43 ]
  %82 = phi ptr [ %79, %71 ], [ %12, %62 ], [ %12, %43 ]
  br i1 %81, label %130, label %132

83:                                               ; preds = %10
  br i1 %24, label %84, label %86

84:                                               ; preds = %83
  %85 = urem i32 %0, %18
  br label %89

86:                                               ; preds = %83
  %87 = add nsw i32 %17, -2
  %88 = and i32 %87, %0
  br label %89

89:                                               ; preds = %86, %84
  %90 = phi i32 [ %85, %84 ], [ %88, %86 ]
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ref_s, ptr %23, i64 %91
  %93 = getelementptr inbounds %struct.ref_s, ptr %92, i64 2
  %94 = zext i16 %16 to i64
  br label %95

95:                                               ; preds = %126, %89
  %96 = phi ptr [ %127, %126 ], [ %93, %89 ]
  %97 = phi i1 [ false, %126 ], [ true, %89 ]
  br label %98

98:                                               ; preds = %118, %95
  %99 = phi ptr [ %96, %95 ], [ %100, %118 ]
  %100 = getelementptr inbounds %struct.ref_s, ptr %99, i64 -1
  %101 = getelementptr inbounds i8, ptr %99, i64 -15
  %102 = load i8, ptr %101, align 1, !tbaa !14
  %103 = icmp eq i8 %102, 13
  br i1 %103, label %104, label %116

104:                                              ; preds = %98
  %105 = getelementptr %struct.ref_s, ptr %99, i64 -1, i32 0, i32 1
  %106 = load i16, ptr %105, align 2, !tbaa !41
  %107 = zext i16 %106 to i32
  %108 = icmp eq i32 %107, %0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !14
  %112 = ptrtoint ptr %100 to i64
  %113 = ptrtoint ptr %23 to i64
  %114 = sub i64 %112, %113
  %115 = getelementptr inbounds i8, ptr %111, i64 %114
  br label %128

116:                                              ; preds = %98
  %117 = icmp eq i8 %102, 14
  br i1 %117, label %119, label %118

118:                                              ; preds = %116, %123, %104
  br label %98, !llvm.loop !51

119:                                              ; preds = %116
  %120 = load i16, ptr %100, align 8, !tbaa !15
  %121 = and i16 %120, 128
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %119
  %124 = icmp eq ptr %100, %23
  br i1 %124, label %125, label %118

125:                                              ; preds = %123
  br i1 %97, label %126, label %128

126:                                              ; preds = %125
  %127 = getelementptr inbounds %struct.ref_s, ptr %100, i64 %94
  br label %95, !llvm.loop !51

128:                                              ; preds = %119, %125, %109
  %129 = phi ptr [ %115, %109 ], [ %12, %125 ], [ %12, %119 ]
  br i1 %103, label %132, label %130

130:                                              ; preds = %128, %80
  %131 = phi ptr [ %82, %80 ], [ %129, %128 ]
  br label %132

132:                                              ; preds = %80, %128, %130
  %133 = phi i1 [ true, %130 ], [ false, %80 ], [ false, %128 ]
  %134 = phi ptr [ %131, %130 ], [ %82, %80 ], [ %129, %128 ]
  br i1 %133, label %135, label %165

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.ref_s, ptr %11, i64 -1
  %137 = icmp ugt ptr %11, %9
  br i1 %137, label %10, label %138, !llvm.loop !52

138:                                              ; preds = %135
  %139 = load i32, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 4), align 8, !tbaa !45
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %165, label %141

141:                                              ; preds = %138
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #10
  %142 = getelementptr %struct.ref_s, ptr %4, i64 1
  %143 = ptrtoint ptr %142 to i64
  %144 = ptrtoint ptr %9 to i64
  %145 = sub i64 %143, %144
  %146 = lshr i64 %145, 4
  %147 = trunc i64 %146 to i32
  %148 = tail call i32 @ref_stack_count(ptr noundef nonnull @d_stack) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @name_index_ref(i32 noundef %0, ptr noundef nonnull %2) #10
  %149 = icmp ugt i32 %148, %147
  br i1 %149, label %150, label %163

150:                                              ; preds = %141
  %151 = and i64 %146, 4294967295
  %152 = zext i32 %148 to i64
  br label %156

153:                                              ; preds = %156
  %154 = add nuw nsw i64 %157, 1
  %155 = icmp eq i64 %154, %152
  br i1 %155, label %163, label %156, !llvm.loop !53

156:                                              ; preds = %150, %153
  %157 = phi i64 [ %151, %150 ], [ %154, %153 ]
  %158 = call ptr @ref_stack_index(ptr noundef nonnull @d_stack, i64 noundef %157) #10
  %159 = call i32 @dict_find(ptr noundef %158, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %153

161:                                              ; preds = %156
  %162 = load ptr, ptr %3, align 8, !tbaa !27
  br label %163

163:                                              ; preds = %153, %141, %161
  %164 = phi ptr [ %162, %161 ], [ null, %141 ], [ null, %153 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #10
  br label %165

165:                                              ; preds = %132, %163, %138
  %166 = phi ptr [ null, %138 ], [ %164, %163 ], [ %134, %132 ]
  ret ptr %166
}

declare void @name_index_ref(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_put(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  %6 = load i16, ptr %2, align 8, !tbaa !15
  %7 = and i16 %6, 12
  %8 = load i16, ptr %0, align 8, !tbaa !15
  %9 = and i16 %8, 12
  %10 = icmp ugt i16 %7, %9
  br i1 %10, label %207, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  br label %13

13:                                               ; preds = %11, %185
  %14 = phi i32 [ %187, %185 ], [ 0, %11 ]
  %15 = phi ptr [ %188, %185 ], [ %1, %11 ]
  %16 = phi i32 [ %189, %185 ], [ undef, %11 ]
  %17 = call i32 @dict_find(ptr noundef nonnull %0, ptr noundef %15, ptr noundef nonnull %4)
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %190

19:                                               ; preds = %13
  %20 = load ptr, ptr %12, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  switch i32 %17, label %185 [
    i32 0, label %29
    i32 -2, label %21
  ]

21:                                               ; preds = %19
  %22 = load i32, ptr @dict_auto_expand, align 4, !tbaa !20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %185, label %24

24:                                               ; preds = %21
  %25 = call i32 @dict_grow(ptr noundef nonnull %0)
  %26 = icmp slt i32 %25, 0
  %27 = select i1 %26, i32 1, i32 2
  %28 = select i1 %26, i32 %25, i32 %16
  br label %185

29:                                               ; preds = %19
  %30 = load ptr, ptr %4, align 8, !tbaa !27
  %31 = getelementptr inbounds %struct.ref_s, ptr %20, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !14
  %33 = ptrtoint ptr %30 to i64
  %34 = ptrtoint ptr %32 to i64
  %35 = sub i64 %33, %34
  %36 = lshr exact i64 %35, 4
  %37 = getelementptr inbounds i8, ptr %15, i64 1
  %38 = load i8, ptr %37, align 1, !tbaa !14
  %39 = icmp eq i8 %38, 18
  br i1 %39, label %40, label %53

40:                                               ; preds = %29
  %41 = load i16, ptr %15, align 8, !tbaa !15
  %42 = and i16 %41, 32
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = call i32 @name_from_string(ptr noundef nonnull %15, ptr noundef nonnull %5) #10
  %46 = icmp sgt i32 %45, -1
  %47 = select i1 %46, ptr %5, ptr %15
  %48 = select i1 %46, i32 %16, i32 %45
  br label %49

49:                                               ; preds = %44, %40
  %50 = phi i1 [ false, %40 ], [ %46, %44 ]
  %51 = phi ptr [ %15, %40 ], [ %47, %44 ]
  %52 = phi i32 [ -7, %40 ], [ %48, %44 ]
  br i1 %50, label %53, label %185

53:                                               ; preds = %49, %29
  %54 = phi ptr [ %51, %49 ], [ %15, %29 ]
  %55 = phi i32 [ %52, %49 ], [ %16, %29 ]
  %56 = getelementptr inbounds %struct.dict_s, ptr %20, i64 0, i32 1
  %57 = getelementptr inbounds i8, ptr %20, i64 17
  %58 = load i8, ptr %57, align 1, !tbaa !14
  %59 = icmp eq i8 %58, 6
  br i1 %59, label %60, label %92

60:                                               ; preds = %53
  %61 = getelementptr inbounds i8, ptr %54, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !14
  %63 = icmp eq i8 %62, 13
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.tas_s, ptr %54, i64 0, i32 1
  %66 = load i16, ptr %65, align 2, !tbaa !41
  %67 = icmp ugt i16 %66, 4095
  br i1 %67, label %68, label %73

68:                                               ; preds = %64, %60
  %69 = call i32 @dict_unpack(ptr noundef nonnull %0)
  %70 = icmp slt i32 %69, 0
  %71 = select i1 %70, i32 1, i32 2
  %72 = select i1 %70, i32 %69, i32 %55
  br label %88

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.dict_s, ptr %20, i64 0, i32 1, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !14
  %76 = and i64 %36, 4294967295
  %77 = getelementptr inbounds i16, ptr %75, i64 %76
  %78 = load i16, ptr %56, align 8, !tbaa !30
  %79 = zext i16 %78 to i32
  %80 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !37
  %81 = and i32 %80, %79
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %56, ptr noundef %77, ptr noundef nonnull @.str.3) #10
  br label %85

85:                                               ; preds = %83, %73
  %86 = load i16, ptr %65, align 2, !tbaa !41
  %87 = add i16 %86, -16384
  store i16 %87, ptr %77, align 2, !tbaa !22
  br label %88

88:                                               ; preds = %85, %68
  %89 = phi i32 [ %71, %68 ], [ 0, %85 ]
  %90 = phi i32 [ %72, %68 ], [ %55, %85 ]
  %91 = icmp eq i32 %89, 0
  br i1 %91, label %117, label %185

92:                                               ; preds = %53
  %93 = getelementptr inbounds %struct.dict_s, ptr %20, i64 0, i32 1, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !14
  %95 = and i64 %36, 4294967295
  %96 = getelementptr inbounds %struct.ref_s, ptr %94, i64 %95
  %97 = load i16, ptr %54, align 8, !tbaa !15
  %98 = and i16 %97, 12
  %99 = load i16, ptr %0, align 8, !tbaa !15
  %100 = and i16 %99, 12
  %101 = icmp ugt i16 %98, %100
  br i1 %101, label %115, label %102

102:                                              ; preds = %92
  %103 = load i16, ptr %96, align 8, !tbaa !15
  %104 = zext i16 %103 to i32
  %105 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !37
  %106 = and i32 %105, %104
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %56, ptr noundef nonnull %96, ptr noundef nonnull @.str.3) #10
  br label %110

110:                                              ; preds = %102, %108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %96, ptr noundef nonnull align 8 dereferenceable(16) %54, i64 16, i1 false), !tbaa.struct !21
  %111 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !19
  %112 = load i16, ptr %96, align 8, !tbaa !15
  %113 = trunc i32 %111 to i16
  %114 = or i16 %112, %113
  store i16 %114, ptr %96, align 8, !tbaa !15
  br label %115

115:                                              ; preds = %92, %110
  %116 = phi i32 [ %55, %110 ], [ -7, %92 ]
  br i1 %101, label %185, label %117

117:                                              ; preds = %115, %88
  %118 = phi i32 [ %90, %88 ], [ %116, %115 ]
  %119 = getelementptr inbounds %struct.dict_s, ptr %20, i64 0, i32 2
  %120 = load i16, ptr %119, align 8, !tbaa !34
  %121 = zext i16 %120 to i32
  %122 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !37
  %123 = and i32 %122, %121
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %0, ptr noundef nonnull %119, ptr noundef nonnull @.str.4) #10
  br label %127

127:                                              ; preds = %117, %125
  %128 = getelementptr inbounds %struct.dict_s, ptr %20, i64 0, i32 2, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !14
  %130 = add nsw i64 %129, 1
  store i64 %130, ptr %128, align 8, !tbaa !14
  %131 = getelementptr inbounds i8, ptr %54, i64 1
  %132 = load i8, ptr %131, align 1, !tbaa !14
  %133 = icmp eq i8 %132, 13
  br i1 %133, label %134, label %185

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.ref_s, ptr %54, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !14
  %137 = getelementptr inbounds %struct.name_s, ptr %136, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !54
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %183

140:                                              ; preds = %134
  %141 = load ptr, ptr getelementptr inbounds (%struct.ref_s, ptr @ref_systemdict, i64 0, i32 1), align 8, !tbaa !14
  %142 = icmp eq ptr %20, %141
  br i1 %142, label %178, label %143

143:                                              ; preds = %140
  %144 = load ptr, ptr %12, align 8, !tbaa !14
  %145 = load i32, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 4), align 8, !tbaa !45
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %143
  %148 = load i32, ptr @min_dstack_size, align 4, !tbaa !20
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %183, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @d_stack, i64 0, i32 1), align 8, !tbaa !46
  %152 = zext i32 %148 to i64
  br label %156

153:                                              ; preds = %156
  %154 = add nuw nsw i64 %157, 1
  %155 = icmp eq i64 %154, %152
  br i1 %155, label %183, label %156, !llvm.loop !47

156:                                              ; preds = %153, %150
  %157 = phi i64 [ 0, %150 ], [ %154, %153 ]
  %158 = getelementptr inbounds %struct.ref_s, ptr %151, i64 %157, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !14
  %160 = icmp eq ptr %159, %144
  br i1 %160, label %178, label %153

161:                                              ; preds = %143
  %162 = call i32 @ref_stack_count(ptr noundef nonnull @d_stack) #10
  %163 = load i32, ptr @min_dstack_size, align 4, !tbaa !20
  %164 = sub i32 %162, %163
  %165 = icmp ult i32 %164, %162
  br i1 %165, label %166, label %183

166:                                              ; preds = %161
  %167 = sext i32 %164 to i64
  br label %172

168:                                              ; preds = %172
  %169 = add nsw i64 %173, 1
  %170 = trunc i64 %169 to i32
  %171 = icmp ugt i32 %162, %170
  br i1 %171, label %172, label %183, !llvm.loop !48

172:                                              ; preds = %168, %166
  %173 = phi i64 [ %167, %166 ], [ %169, %168 ]
  %174 = call ptr @ref_stack_index(ptr noundef nonnull @d_stack, i64 noundef %173) #10
  %175 = getelementptr inbounds %struct.ref_s, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !14
  %177 = icmp eq ptr %176, %144
  br i1 %177, label %178, label %168

178:                                              ; preds = %172, %156, %140
  %179 = call i32 @alloc_save_level(ptr noundef nonnull @gs_imemory) #10
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load ptr, ptr %4, align 8, !tbaa !27
  br label %183

183:                                              ; preds = %168, %153, %147, %161, %178, %134, %181
  %184 = phi ptr [ %182, %181 ], [ inttoptr (i64 1 to ptr), %134 ], [ inttoptr (i64 1 to ptr), %178 ], [ inttoptr (i64 1 to ptr), %161 ], [ inttoptr (i64 1 to ptr), %147 ], [ inttoptr (i64 1 to ptr), %153 ], [ inttoptr (i64 1 to ptr), %168 ]
  store ptr %184, ptr %137, align 8, !tbaa !54
  br label %185

185:                                              ; preds = %127, %183, %19, %24, %21, %49, %88, %115
  %186 = phi i32 [ %89, %88 ], [ 1, %115 ], [ 1, %49 ], [ 1, %21 ], [ %27, %24 ], [ 1, %19 ], [ 0, %183 ], [ 0, %127 ]
  %187 = phi i32 [ %14, %88 ], [ %14, %115 ], [ %14, %49 ], [ %14, %21 ], [ %14, %24 ], [ %14, %19 ], [ 1, %183 ], [ 1, %127 ]
  %188 = phi ptr [ %54, %88 ], [ %54, %115 ], [ %51, %49 ], [ %15, %21 ], [ %15, %24 ], [ %15, %19 ], [ %54, %183 ], [ %54, %127 ]
  %189 = phi i32 [ %90, %88 ], [ %116, %115 ], [ %52, %49 ], [ -2, %21 ], [ %28, %24 ], [ %17, %19 ], [ %118, %183 ], [ %118, %127 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  switch i32 %186, label %207 [
    i32 0, label %190
    i32 2, label %13
  ]

190:                                              ; preds = %13, %185
  %191 = phi i32 [ %187, %185 ], [ %14, %13 ]
  %192 = load ptr, ptr %4, align 8, !tbaa !27
  %193 = load i16, ptr %192, align 8, !tbaa !15
  %194 = zext i16 %193 to i32
  %195 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !37
  %196 = and i32 %195, %194
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !14
  %201 = call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef %200, ptr noundef nonnull %192, ptr noundef nonnull @.str.5) #10
  br label %202

202:                                              ; preds = %190, %198
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %192, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !21
  %203 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !19
  %204 = load i16, ptr %192, align 8, !tbaa !15
  %205 = trunc i32 %203 to i16
  %206 = or i16 %204, %205
  store i16 %206, ptr %192, align 8, !tbaa !15
  br label %207

207:                                              ; preds = %185, %3, %202
  %208 = phi i32 [ %191, %202 ], [ -7, %3 ], [ %189, %185 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %208
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_grow(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.dict_s, ptr %3, i64 0, i32 3
  %5 = getelementptr inbounds %struct.dict_s, ptr %3, i64 0, i32 3, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !14
  %7 = and i64 %6, 4294967295
  %8 = mul nuw nsw i64 %7, 3
  %9 = lshr i64 %8, 1
  %10 = tail call i64 @llvm.umin.i64(i64 %9, i64 4294967293)
  %11 = add nuw nsw i64 %10, 2
  %12 = getelementptr inbounds %struct.tas_s, ptr %3, i64 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !36
  %14 = zext i16 %13 to i64
  %15 = add nsw i64 %14, -1
  %16 = icmp ugt i64 %11, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %1
  %18 = trunc i64 %11 to i32
  %19 = tail call i32 @dict_resize(ptr noundef %0, i32 noundef %18), !range !56
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = load i16, ptr %12, align 2, !tbaa !36
  %23 = zext i16 %22 to i32
  %24 = add nsw i32 %23, -1
  %25 = icmp ult i32 %24, 65534
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = tail call i32 @dict_resize(ptr noundef %0, i32 noundef 65534), !range !56
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %39, label %29

29:                                               ; preds = %26, %21
  %30 = phi i32 [ %27, %26 ], [ %19, %21 ]
  %31 = load i16, ptr %12, align 2, !tbaa !36
  %32 = zext i16 %31 to i32
  %33 = add nsw i32 %32, -1
  %34 = load i64, ptr %5, align 8, !tbaa !14
  %35 = trunc i64 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %39, label %37

37:                                               ; preds = %29
  %38 = sext i32 %33 to i64
  br label %39

39:                                               ; preds = %29, %26, %17, %37
  %40 = phi i32 [ undef, %37 ], [ 0, %17 ], [ 0, %26 ], [ %30, %29 ]
  %41 = phi i64 [ %38, %37 ], [ %11, %17 ], [ %11, %26 ], [ %11, %29 ]
  %42 = phi i1 [ true, %37 ], [ false, %17 ], [ false, %26 ], [ false, %29 ]
  br i1 %42, label %43, label %53

43:                                               ; preds = %39, %1
  %44 = phi i64 [ %41, %39 ], [ %11, %1 ]
  %45 = load i16, ptr %4, align 8, !tbaa !35
  %46 = zext i16 %45 to i32
  %47 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !37
  %48 = and i32 %47, %46
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull @.str.14) #10
  br label %52

52:                                               ; preds = %43, %50
  store i64 %44, ptr %5, align 8, !tbaa !14
  br label %53

53:                                               ; preds = %39, %52
  %54 = phi i32 [ 0, %52 ], [ %40, %39 ]
  ret i32 %54
}

declare i32 @name_from_string(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @alloc_save_level(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_put_string(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ref_s, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %6 = trunc i64 %5 to i32
  %7 = call i32 @name_ref(ptr noundef %1, i32 noundef %6, ptr noundef nonnull %4, i32 noundef 0) #10
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = call i32 @dict_put(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2)
  br label %11

11:                                               ; preds = %3, %9
  %12 = phi i32 [ %10, %9 ], [ %7, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @dict_undef(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  %4 = call i32 @dict_find(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %94, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = load ptr, ptr %3, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.ref_s, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = ptrtoint ptr %9 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 4
  %16 = getelementptr inbounds %struct.dict_s, ptr %8, i64 0, i32 1
  %17 = getelementptr inbounds i8, ptr %8, i64 17
  %18 = load i8, ptr %17, align 1, !tbaa !14
  %19 = icmp eq i8 %18, 6
  %20 = getelementptr inbounds %struct.dict_s, ptr %8, i64 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !14
  %22 = and i64 %15, 4294967295
  %23 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !37
  br i1 %19, label %24, label %37

24:                                               ; preds = %6
  %25 = getelementptr inbounds i16, ptr %21, i64 %22
  %26 = load i16, ptr %16, align 8, !tbaa !30
  %27 = zext i16 %26 to i32
  %28 = and i32 %23, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %16, ptr noundef %25, ptr noundef nonnull @.str.6) #10
  br label %32

32:                                               ; preds = %30, %24
  %33 = getelementptr inbounds i16, ptr %25, i64 -1
  %34 = load i16, ptr %33, align 2, !tbaa !22
  %35 = icmp eq i16 %34, 24576
  %36 = select i1 %35, i16 24576, i16 24577
  store i16 %36, ptr %25, align 2, !tbaa !22
  br label %59

37:                                               ; preds = %6
  %38 = getelementptr inbounds %struct.ref_s, ptr %21, i64 %22
  %39 = load i16, ptr %38, align 8, !tbaa !15
  %40 = zext i16 %39 to i32
  %41 = and i32 %23, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %16, ptr noundef nonnull %38, ptr noundef nonnull @.str.6) #10
  br label %45

45:                                               ; preds = %37, %43
  %46 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !19
  %47 = trunc i32 %46 to i16
  %48 = add i16 %47, 3584
  store i16 %48, ptr %38, align 8, !tbaa !15
  %49 = getelementptr inbounds i8, ptr %38, i64 -15
  %50 = load i8, ptr %49, align 1, !tbaa !14
  %51 = icmp eq i8 %50, 14
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.ref_s, ptr %38, i64 -1
  %54 = load i16, ptr %53, align 8, !tbaa !15
  %55 = and i16 %54, 128
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52, %45
  %58 = or i16 %48, 128
  store i16 %58, ptr %38, align 8, !tbaa !15
  br label %59

59:                                               ; preds = %52, %57, %32
  %60 = getelementptr inbounds %struct.dict_s, ptr %8, i64 0, i32 2
  %61 = load i16, ptr %60, align 8, !tbaa !34
  %62 = zext i16 %61 to i32
  %63 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !37
  %64 = and i32 %63, %62
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef %0, ptr noundef nonnull %60, ptr noundef nonnull @.str.7) #10
  br label %68

68:                                               ; preds = %59, %66
  %69 = getelementptr inbounds %struct.dict_s, ptr %8, i64 0, i32 2, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !14
  %71 = add nsw i64 %70, -1
  store i64 %71, ptr %69, align 8, !tbaa !14
  %72 = getelementptr inbounds i8, ptr %1, i64 1
  %73 = load i8, ptr %72, align 1, !tbaa !14
  %74 = icmp eq i8 %73, 13
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !14
  %78 = getelementptr inbounds %struct.name_s, ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !54
  %80 = icmp ugt ptr %79, inttoptr (i64 1 to ptr)
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store ptr null, ptr %78, align 8, !tbaa !54
  br label %82

82:                                               ; preds = %75, %81, %68
  %83 = load i16, ptr %9, align 8, !tbaa !15
  %84 = zext i16 %83 to i32
  %85 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !37
  %86 = and i32 %85, %84
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef %8, ptr noundef nonnull %9, ptr noundef nonnull @.str.8) #10
  br label %90

90:                                               ; preds = %82, %88
  %91 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !19
  %92 = trunc i32 %91 to i16
  %93 = add i16 %92, 3584
  store i16 %93, ptr %9, align 8, !tbaa !15
  br label %94

94:                                               ; preds = %2, %90
  %95 = phi i32 [ 0, %90 ], [ -21, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 %95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @dict_length(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.dict_s, ptr %3, i64 0, i32 2, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @dict_maxlength(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.dict_s, ptr %3, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !14
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @dict_max_index(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.tas_s, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !36
  %6 = zext i16 %5 to i32
  %7 = add nsw i32 %6, -2
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_copy_entries(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca [2 x %struct.ref_s], align 16
  %5 = alloca ptr, align 8
  %6 = load i16, ptr %1, align 8, !tbaa !15
  %7 = and i16 %6, 12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %8 = icmp eq i16 %7, 12
  br i1 %8, label %64, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = getelementptr inbounds %struct.tas_s, ptr %11, i64 0, i32 1
  %13 = load i16, ptr %12, align 2, !tbaa !36
  %14 = zext i16 %13 to i32
  %15 = getelementptr inbounds i8, ptr %4, i64 1
  %16 = getelementptr inbounds %struct.ref_s, ptr %4, i64 1
  %17 = icmp eq i32 %2, 0
  %18 = getelementptr inbounds [2 x %struct.ref_s], ptr %4, i64 0, i64 1
  br label %19

19:                                               ; preds = %63, %9
  %20 = phi i32 [ %14, %9 ], [ %49, %63 ]
  %21 = load ptr, ptr %10, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.ref_s, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !14
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds %struct.ref_s, ptr %23, i64 %24
  %26 = getelementptr inbounds %struct.dict_s, ptr %21, i64 0, i32 1
  %27 = getelementptr inbounds i8, ptr %21, i64 17
  %28 = zext i32 %20 to i64
  br label %29

29:                                               ; preds = %41, %19
  %30 = phi i64 [ %33, %41 ], [ %28, %19 ]
  %31 = phi ptr [ %32, %41 ], [ %25, %19 ]
  %32 = getelementptr inbounds %struct.ref_s, ptr %31, i64 -1
  %33 = add nsw i64 %30, -1
  %34 = trunc i64 %30 to i32
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %29
  %37 = and i64 %33, 4294967295
  %38 = call i32 @array_get(ptr noundef nonnull %26, i64 noundef %37, ptr noundef nonnull %4) #10
  %39 = load i8, ptr %15, align 1, !tbaa !14
  %40 = icmp eq i8 %39, 13
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8, ptr %27, align 1, !tbaa !14
  %43 = icmp eq i8 %42, 6
  %44 = icmp eq i8 %39, 14
  %45 = or i1 %44, %43
  br i1 %45, label %29, label %46, !llvm.loop !57

46:                                               ; preds = %41, %36
  %47 = trunc i64 %33 to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %32, i64 16, i1 false), !tbaa.struct !21
  br label %48

48:                                               ; preds = %29, %46
  %49 = phi i32 [ %47, %46 ], [ -1, %29 ]
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  br i1 %17, label %55, label %52

52:                                               ; preds = %51
  %53 = call i32 @dict_find(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %54 = icmp slt i32 %53, 1
  br i1 %54, label %55, label %63

55:                                               ; preds = %52, %51
  %56 = load i16, ptr %4, align 16, !tbaa !15
  %57 = and i16 %56, 12
  %58 = icmp ugt i16 %57, %7
  br i1 %58, label %114, label %59

59:                                               ; preds = %55
  %60 = load i16, ptr %18, align 16, !tbaa !15
  %61 = and i16 %60, 12
  %62 = icmp ugt i16 %61, %7
  br i1 %62, label %114, label %63

63:                                               ; preds = %59, %52
  br label %19, !llvm.loop !58

64:                                               ; preds = %48, %3
  %65 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !14
  %67 = getelementptr inbounds %struct.tas_s, ptr %66, i64 0, i32 1
  %68 = load i16, ptr %67, align 2, !tbaa !36
  %69 = zext i16 %68 to i32
  %70 = getelementptr inbounds i8, ptr %4, i64 1
  %71 = getelementptr inbounds %struct.ref_s, ptr %4, i64 1
  %72 = icmp eq i32 %2, 0
  %73 = getelementptr inbounds [2 x %struct.ref_s], ptr %4, i64 0, i64 1
  br label %74

74:                                               ; preds = %110, %64
  %75 = phi i32 [ %69, %64 ], [ %104, %110 ]
  %76 = load ptr, ptr %65, align 8, !tbaa !14
  %77 = getelementptr inbounds %struct.ref_s, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !14
  %79 = sext i32 %75 to i64
  %80 = getelementptr inbounds %struct.ref_s, ptr %78, i64 %79
  %81 = getelementptr inbounds %struct.dict_s, ptr %76, i64 0, i32 1
  %82 = getelementptr inbounds i8, ptr %76, i64 17
  %83 = zext i32 %75 to i64
  br label %84

84:                                               ; preds = %96, %74
  %85 = phi i64 [ %88, %96 ], [ %83, %74 ]
  %86 = phi ptr [ %87, %96 ], [ %80, %74 ]
  %87 = getelementptr inbounds %struct.ref_s, ptr %86, i64 -1
  %88 = add nsw i64 %85, -1
  %89 = trunc i64 %85 to i32
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = and i64 %88, 4294967295
  %93 = call i32 @array_get(ptr noundef nonnull %81, i64 noundef %92, ptr noundef nonnull %4) #10
  %94 = load i8, ptr %70, align 1, !tbaa !14
  %95 = icmp eq i8 %94, 13
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i8, ptr %82, align 1, !tbaa !14
  %98 = icmp eq i8 %97, 6
  %99 = icmp eq i8 %94, 14
  %100 = or i1 %99, %98
  br i1 %100, label %84, label %101, !llvm.loop !57

101:                                              ; preds = %96, %91
  %102 = trunc i64 %88 to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %71, ptr noundef nonnull align 8 dereferenceable(16) %87, i64 16, i1 false), !tbaa.struct !21
  br label %103

103:                                              ; preds = %84, %101
  %104 = phi i32 [ %102, %101 ], [ -1, %84 ]
  %105 = icmp sgt i32 %104, -1
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  br i1 %72, label %111, label %107

107:                                              ; preds = %106
  %108 = call i32 @dict_find(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107, %111
  br label %74, !llvm.loop !59

111:                                              ; preds = %107, %106
  %112 = call i32 @dict_put(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %73)
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %110

114:                                              ; preds = %59, %55, %103, %111
  %115 = phi i32 [ %112, %111 ], [ 0, %103 ], [ -7, %55 ], [ -7, %59 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #10
  ret i32 %115
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @dict_first(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.tas_s, ptr %3, i64 0, i32 1
  %5 = load i16, ptr %4, align 2, !tbaa !36
  %6 = zext i16 %5 to i32
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_next(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !14
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds %struct.ref_s, ptr %7, i64 %8
  %10 = getelementptr inbounds %struct.dict_s, ptr %5, i64 0, i32 1
  %11 = getelementptr inbounds i8, ptr %2, i64 1
  %12 = getelementptr inbounds i8, ptr %5, i64 17
  %13 = zext i32 %1 to i64
  br label %14

14:                                               ; preds = %26, %3
  %15 = phi i64 [ %18, %26 ], [ %13, %3 ]
  %16 = phi ptr [ %17, %26 ], [ %9, %3 ]
  %17 = getelementptr inbounds %struct.ref_s, ptr %16, i64 -1
  %18 = add nsw i64 %15, -1
  %19 = trunc i64 %15 to i32
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = and i64 %18, 4294967295
  %23 = tail call i32 @array_get(ptr noundef nonnull %10, i64 noundef %22, ptr noundef %2) #10
  %24 = load i8, ptr %11, align 1, !tbaa !14
  %25 = icmp eq i8 %24, 13
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8, ptr %12, align 1, !tbaa !14
  %28 = icmp eq i8 %27, 6
  %29 = icmp eq i8 %24, 14
  %30 = or i1 %29, %28
  br i1 %30, label %14, label %31, !llvm.loop !57

31:                                               ; preds = %26, %21
  %32 = trunc i64 %18 to i32
  %33 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !21
  br label %34

34:                                               ; preds = %14, %31
  %35 = phi i32 [ %32, %31 ], [ -1, %14 ]
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_resize(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = alloca %struct.dict_s, align 8
  %4 = alloca %struct.ref_s, align 8
  %5 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %7 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 2, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !14
  %9 = trunc i64 %8 to i32
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, ptr @dict_auto_expand, align 4, !tbaa !20
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %102, label %14

14:                                               ; preds = %11, %2
  %15 = phi i32 [ %1, %2 ], [ %9, %11 ]
  %16 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !33
  %17 = load i16, ptr %0, align 8, !tbaa !15
  %18 = and i16 %17, 12
  %19 = zext nneg i16 %18 to i32
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %19) #10
  %20 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  store ptr %3, ptr %20, align 8, !tbaa !14
  %21 = load i16, ptr %0, align 8, !tbaa !15
  %22 = and i16 %21, 12
  %23 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !19
  %24 = trunc i32 %23 to i16
  %25 = or i16 %22, %24
  %26 = or i16 %25, 112
  %27 = add i16 %26, 512
  store i16 %27, ptr %4, align 8, !tbaa !15
  %28 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 1
  %29 = getelementptr inbounds i8, ptr %6, i64 17
  %30 = load i8, ptr %29, align 1, !tbaa !14
  %31 = icmp eq i8 %30, 6
  %32 = zext i1 %31 to i32
  %33 = call fastcc i32 @dict_create_contents(i32 noundef %15, ptr noundef nonnull %4, i32 noundef %32)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %14
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %16) #10
  br label %102

36:                                               ; preds = %14
  %37 = load i16, ptr %4, align 8, !tbaa !15
  %38 = or i16 %37, 12
  store i16 %38, ptr %4, align 8, !tbaa !15
  %39 = call i32 @dict_copy_entries(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 0), !range !56
  %40 = load i16, ptr %6, align 8, !tbaa !28
  %41 = zext i16 %40 to i32
  %42 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !37
  %43 = and i32 %42, %41
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull @.str.9) #10
  br label %49

47:                                               ; preds = %36
  %48 = load ptr, ptr @gs_imemory, align 8, !tbaa !8
  call void @gs_free_ref_array(ptr noundef %48, ptr noundef nonnull %6, ptr noundef nonnull @.str.10) #10
  br label %49

49:                                               ; preds = %47, %45
  %50 = load i16, ptr %28, align 8, !tbaa !30
  %51 = zext i16 %50 to i32
  %52 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !37
  %53 = and i32 %52, %51
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %0, ptr noundef nonnull %28, ptr noundef nonnull @.str.11) #10
  br label %59

57:                                               ; preds = %49
  %58 = load ptr, ptr @gs_imemory, align 8, !tbaa !8
  call void @gs_free_ref_array(ptr noundef %58, ptr noundef nonnull %28, ptr noundef nonnull @.str.12) #10
  br label %59

59:                                               ; preds = %57, %55
  %60 = getelementptr inbounds %struct.dict_s, ptr %3, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(16) %60, i64 16, i1 false), !tbaa.struct !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !21
  %61 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 3
  %62 = load i16, ptr %61, align 8, !tbaa !35
  %63 = zext i16 %62 to i32
  %64 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !37
  %65 = and i32 %64, %63
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %0, ptr noundef nonnull %61, ptr noundef nonnull @.str.13) #10
  br label %69

69:                                               ; preds = %59, %67
  %70 = zext i32 %15 to i64
  %71 = getelementptr inbounds %struct.dict_s, ptr %6, i64 0, i32 3, i32 1
  store i64 %70, ptr %71, align 8, !tbaa !14
  call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %16) #10
  %72 = load ptr, ptr @d_stack, align 8, !tbaa !39
  %73 = getelementptr inbounds %struct.ref_s, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !14
  %75 = getelementptr inbounds i8, ptr %74, i64 17
  %76 = load i8, ptr %75, align 1, !tbaa !14
  %77 = icmp eq i8 %76, 6
  br i1 %77, label %78, label %91

78:                                               ; preds = %69
  %79 = load i16, ptr %74, align 8, !tbaa !28
  %80 = and i16 %79, 32
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.dict_s, ptr %74, i64 0, i32 1, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !14
  store ptr %84, ptr @dtop_keys, align 8, !tbaa !27
  %85 = getelementptr inbounds %struct.tas_s, ptr %74, i64 0, i32 1
  %86 = load i16, ptr %85, align 2, !tbaa !36
  %87 = zext i16 %86 to i32
  %88 = add nsw i32 %87, -1
  store i32 %88, ptr @dtop_npairs, align 4, !tbaa !20
  %89 = getelementptr inbounds %struct.ref_s, ptr %74, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !14
  store ptr %90, ptr @dtop_values, align 8, !tbaa !27
  br label %92

91:                                               ; preds = %78, %69
  store ptr @no_packed_keys, ptr @dtop_keys, align 8, !tbaa !27
  store i32 1, ptr @dtop_npairs, align 4, !tbaa !20
  br label %92

92:                                               ; preds = %91, %82
  %93 = load i16, ptr %74, align 8, !tbaa !28
  %94 = and i16 %93, 16
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i16, ptr %72, align 8, !tbaa !15
  %98 = and i16 %97, 12
  %99 = zext nneg i16 %98 to i32
  br label %100

100:                                              ; preds = %92, %96
  %101 = phi i32 [ %99, %96 ], [ -1, %92 ]
  store i32 %101, ptr @dsspace, align 4, !tbaa !20
  br label %102

102:                                              ; preds = %11, %100, %35
  %103 = phi i32 [ %33, %35 ], [ 0, %100 ], [ -2, %11 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret i32 %103
}

declare void @ialloc_set_space(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @array_get(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @dict_value_index(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !14
  %7 = ptrtoint ptr %1 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = add i32 %11, -1
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @dict_index_entry(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.dict_s, ptr %5, i64 0, i32 1
  %7 = add nsw i32 %1, 1
  %8 = sext i32 %7 to i64
  %9 = tail call i32 @array_get(ptr noundef nonnull %6, i64 noundef %8, ptr noundef %2) #10
  %10 = getelementptr inbounds i8, ptr %2, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !14
  %12 = icmp eq i8 %11, 13
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds i8, ptr %5, i64 17
  %15 = load i8, ptr %14, align 1, !tbaa !14
  %16 = icmp eq i8 %15, 6
  %17 = icmp eq i8 %11, 14
  %18 = or i1 %17, %16
  br i1 %18, label %24, label %19

19:                                               ; preds = %13, %3
  %20 = getelementptr inbounds %struct.ref_s, ptr %2, i64 1
  %21 = getelementptr inbounds %struct.ref_s, ptr %5, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.ref_s, ptr %22, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %23, i64 16, i1 false), !tbaa.struct !21
  br label %24

24:                                               ; preds = %13, %19
  %25 = phi i32 [ 0, %19 ], [ -21, %13 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define dso_local void @dstack_gc_cleanup() local_unnamed_addr #2 {
  %1 = alloca %struct.ref_s, align 8
  %2 = tail call i32 @ref_stack_count(ptr noundef nonnull @d_stack) #10
  %3 = load i32, ptr @min_dstack_size, align 4, !tbaa !20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %48, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds i8, ptr %1, i64 1
  %7 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %8 = zext i32 %3 to i64
  br label %9

9:                                                ; preds = %5, %44
  %10 = phi i64 [ %8, %5 ], [ %45, %44 ]
  %11 = trunc i64 %10 to i32
  %12 = sub i32 %2, %11
  %13 = zext i32 %12 to i64
  %14 = call ptr @ref_stack_index(ptr noundef nonnull @d_stack, i64 noundef %13) #10
  %15 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.tas_s, ptr %16, i64 0, i32 1
  %18 = load i16, ptr %17, align 2, !tbaa !36
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.ref_s, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.dict_s, ptr %16, i64 0, i32 1
  %24 = zext i16 %18 to i64
  br label %25

25:                                               ; preds = %20, %39
  %26 = phi i64 [ 0, %20 ], [ %40, %39 ]
  %27 = phi ptr [ %22, %20 ], [ %41, %39 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #10
  %28 = call i32 @array_get(ptr noundef nonnull %23, i64 noundef %26, ptr noundef nonnull %1) #10
  %29 = load i8, ptr %6, align 1, !tbaa !14
  %30 = icmp eq i8 %29, 13
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load ptr, ptr %7, align 8, !tbaa !14
  %33 = getelementptr inbounds %struct.name_s, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !54
  %35 = icmp ugt ptr %34, inttoptr (i64 1 to ptr)
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = icmp eq ptr %34, %27
  br i1 %37, label %43, label %38

38:                                               ; preds = %36
  store ptr %27, ptr %33, align 8, !tbaa !54
  br label %39

39:                                               ; preds = %25, %31, %38
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #10
  %40 = add nuw nsw i64 %26, 1
  %41 = getelementptr inbounds %struct.ref_s, ptr %27, i64 1
  %42 = icmp eq i64 %40, %24
  br i1 %42, label %44, label %25, !llvm.loop !60

43:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #10
  br label %44

44:                                               ; preds = %39, %9, %43
  %45 = add nsw i64 %10, -1
  %46 = and i64 %45, 4294967295
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %9, !llvm.loop !61

48:                                               ; preds = %44, %0
  ret void
}

declare void @refset_null(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i32 0, i32 33}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !10, i64 0}
!9 = !{!"gs_dual_memory_s", !10, i64 0, !11, i64 8, !13, i64 40, !13, i64 44, !10, i64 48, !13, i64 56, !13, i64 60}
!10 = !{!"any pointer", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"int", !11, i64 0}
!14 = !{!11, !11, i64 0}
!15 = !{!16, !18, i64 0}
!16 = !{!"ref_s", !17, i64 0, !11, i64 8}
!17 = !{!"tas_s", !18, i64 0, !18, i64 2}
!18 = !{!"short", !11, i64 0}
!19 = !{!9, !13, i64 60}
!20 = !{!13, !13, i64 0}
!21 = !{i64 0, i64 2, !22, i64 2, i64 2, !22, i64 8, i64 8, !23, i64 8, i64 2, !22, i64 8, i64 4, !25, i64 8, i64 8, !23, i64 8, i64 8, !27, i64 8, i64 8, !27, i64 8, i64 8, !27, i64 8, i64 8, !27, i64 8, i64 8, !27, i64 8, i64 8, !27, i64 8, i64 8, !27, i64 8, i64 8, !27, i64 8, i64 8, !27, i64 8, i64 8, !27, i64 8, i64 8, !27, i64 8, i64 8, !27, i64 8, i64 8, !27}
!22 = !{!18, !18, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"long", !11, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"float", !11, i64 0}
!27 = !{!10, !10, i64 0}
!28 = !{!29, !18, i64 0}
!29 = !{!"dict_s", !16, i64 0, !16, i64 16, !16, i64 32, !16, i64 48}
!30 = !{!29, !18, i64 16}
!31 = !{!29, !18, i64 18}
!32 = distinct !{!32, !7}
!33 = !{!9, !13, i64 40}
!34 = !{!29, !18, i64 32}
!35 = !{!29, !18, i64 48}
!36 = !{!29, !18, i64 2}
!37 = !{!9, !13, i64 56}
!38 = distinct !{!38, !7}
!39 = !{!40, !10, i64 0}
!40 = !{!"ref_stack_s", !10, i64 0, !10, i64 8, !10, i64 16, !16, i64 24, !13, i64 40, !13, i64 44, !16, i64 48, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !16, i64 88, !13, i64 104, !13, i64 108, !13, i64 112, !10, i64 120}
!41 = !{!16, !18, i64 2}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = !{!40, !13, i64 40}
!46 = !{!40, !10, i64 8}
!47 = distinct !{!47, !7}
!48 = distinct !{!48, !7}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = distinct !{!52, !7}
!53 = distinct !{!53, !7}
!54 = !{!55, !10, i64 16}
!55 = !{!"name_s", !18, i64 0, !13, i64 2, !13, i64 2, !13, i64 2, !10, i64 8, !10, i64 16}
!56 = !{i32 -2147483648, i32 1}
!57 = distinct !{!57, !7}
!58 = distinct !{!58, !7}
!59 = distinct !{!59, !7}
!60 = distinct !{!60, !7}
!61 = distinct !{!61, !7}
