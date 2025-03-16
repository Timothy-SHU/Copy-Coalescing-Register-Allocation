; ModuleID = 'istack.c'
source_filename = "istack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.ref_stack_block_s = type { %struct.ref_s, %struct.ref_s }

@.str = private unnamed_addr constant [10 x i8] c"ref_stack\00", align 1
@st_ref_stack = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 128, ptr @.str, ptr null, ptr @ref_stack_clear_marks, ptr @ref_stack_enum_ptrs, ptr @ref_stack_reloc_ptrs, ptr null }, align 8
@gs_imemory = external global %struct.gs_dual_memory_s, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"ref_stack_pop_block\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ref_stack_push_block\00", align 1
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ref_stack_clear_marks(ptr nocapture noundef %0, i32 %1) #0 {
  %3 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !5
  %5 = and i16 %4, -2
  store i16 %5, ptr %3, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef ptr @ref_stack_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3
  store ptr %7, ptr %3, align 8, !tbaa !14
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ @ptr_ref_procs, %6 ], [ null, %4 ]
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal void @ref_stack_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 4
  tail call void @gs_reloc_refs(ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef %2) #9
  %8 = load i16, ptr %4, align 8, !tbaa !5
  %9 = and i16 %8, -2
  store i16 %9, ptr %4, align 8, !tbaa !5
  %10 = load ptr, ptr %5, align 8, !tbaa !15
  %11 = ptrtoint ptr %6 to i64
  %12 = ptrtoint ptr %10 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 1
  %15 = load ptr, ptr %0, align 8, !tbaa !16
  %16 = sub nsw i64 0, %14
  %17 = getelementptr inbounds i16, ptr %15, i64 %16
  store ptr %17, ptr %0, align 8, !tbaa !16
  %18 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !17
  %20 = getelementptr inbounds i16, ptr %19, i64 %16
  store ptr %20, ptr %18, align 8, !tbaa !17
  %21 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  %23 = getelementptr inbounds i16, ptr %22, i64 %16
  store ptr %23, ptr %21, align 8, !tbaa !18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ref_stack_init(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr noundef readonly %4, ptr noundef %5) local_unnamed_addr #2 {
  %7 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %8 = load i16, ptr %7, align 2, !tbaa !19
  %9 = zext i16 %8 to i32
  %10 = zext i32 %2 to i64
  %11 = add i32 %2, %3
  %12 = sub i32 %9, %11
  %13 = add i32 %12, -2
  %14 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds %struct.ref_stack_block_s, ptr %15, i64 1
  %17 = getelementptr inbounds %struct.ref_s, ptr %16, i64 %10
  %18 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.ref_s, ptr %17, i64 -1
  store ptr %19, ptr %0, align 8, !tbaa !16
  %20 = zext i32 %13 to i64
  %21 = getelementptr inbounds %struct.ref_s, ptr %19, i64 %20
  %22 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !18
  %23 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !20
  %24 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 4
  store i32 0, ptr %24, align 8, !tbaa !26
  %25 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 5
  store i32 0, ptr %25, align 4, !tbaa !27
  %26 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 6
  %27 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 6, i32 1
  store i64 %20, ptr %27, align 8, !tbaa !15
  store i16 2816, ptr %26, align 8, !tbaa !28
  %28 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 7
  store i32 0, ptr %28, align 8, !tbaa !29
  %29 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 8
  store i32 %2, ptr %29, align 4, !tbaa !30
  %30 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 9
  store i32 %3, ptr %30, align 8, !tbaa !31
  %31 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 10
  store i32 %9, ptr %31, align 4, !tbaa !32
  %32 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 11
  store i32 %13, ptr %32, align 8, !tbaa !33
  %33 = icmp eq ptr %4, null
  %34 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 12
  br i1 %33, label %36, label %35

35:                                               ; preds = %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !20
  br label %38

36:                                               ; preds = %6
  %37 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 12, i32 1
  store i64 0, ptr %37, align 8, !tbaa !15
  store i16 0, ptr %34, align 8, !tbaa !34
  br label %38

38:                                               ; preds = %36, %35
  %39 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 13
  store i32 -1, ptr %39, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 14
  store i32 -1, ptr %40, align 4, !tbaa !36
  %41 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 15
  store i32 1, ptr %41, align 8, !tbaa !37
  %42 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 16
  store ptr %5, ptr %42, align 8, !tbaa !38
  %43 = load ptr, ptr %14, align 8, !tbaa !15
  %44 = getelementptr inbounds %struct.ref_s, ptr %43, i64 2
  %45 = icmp eq i32 %2, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 12
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ %2, %46 ], [ %51, %48 ]
  %50 = phi ptr [ %44, %46 ], [ %52, %48 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %47, i64 16, i1 false), !tbaa.struct !20
  %51 = add i32 %49, -1
  %52 = getelementptr inbounds %struct.ref_s, ptr %50, i64 1
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %54, label %48, !llvm.loop !39

54:                                               ; preds = %48, %38
  %55 = load i32, ptr %30, align 8, !tbaa !31
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load i16, ptr %7, align 2, !tbaa !19
  %59 = zext i16 %58 to i64
  %60 = getelementptr inbounds %struct.ref_s, ptr %43, i64 %59
  %61 = sext i32 %55 to i64
  %62 = sub nsw i64 0, %61
  %63 = getelementptr inbounds %struct.ref_s, ptr %60, i64 %62
  tail call void @refset_null(ptr noundef nonnull %63, i32 noundef %55) #9
  br label %64

64:                                               ; preds = %54, %57
  %65 = getelementptr inbounds %struct.ref_stack_block_s, ptr %43, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !20
  %66 = load i32, ptr %29, align 4, !tbaa !30
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ref_s, ptr %44, i64 %67
  %69 = getelementptr inbounds %struct.ref_stack_block_s, ptr %43, i64 0, i32 1, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !15
  %70 = getelementptr inbounds %struct.ref_stack_block_s, ptr %43, i64 0, i32 1, i32 0, i32 1
  store i16 0, ptr %70, align 2, !tbaa !41
  %71 = load ptr, ptr %18, align 8, !tbaa !17
  tail call void @refset_null(ptr noundef %71, i32 noundef %13) #9
  %72 = getelementptr inbounds %struct.ref_s, ptr %15, i64 0, i32 1
  store ptr null, ptr %72, align 8, !tbaa !15
  store i16 1024, ptr %15, align 8, !tbaa !43
  %73 = getelementptr inbounds %struct.tas_s, ptr %15, i64 0, i32 1
  store i16 0, ptr %73, align 2, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @refset_null(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @ref_stack_set_max_count(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !26
  %5 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = add i32 %4, 1
  %15 = add i32 %14, %13
  %16 = zext i32 %15 to i64
  %17 = tail call i64 @llvm.smax.i64(i64 %16, i64 %1)
  %18 = tail call i64 @llvm.umin.i64(i64 %17, i64 268435455)
  %19 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 15
  %20 = load i32, ptr %19, align 8, !tbaa !37
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 11
  %24 = load i32, ptr %23, align 8, !tbaa !33
  %25 = zext i32 %24 to i64
  %26 = tail call i64 @llvm.umin.i64(i64 %18, i64 %25)
  br label %27

27:                                               ; preds = %22, %2
  %28 = phi i64 [ %18, %2 ], [ %26, %22 ]
  %29 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 6, i32 1
  store i64 %28, ptr %29, align 8, !tbaa !15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ref_stack_count(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !27
  %4 = load ptr, ptr %0, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = add i32 %3, 1
  %13 = add i32 %12, %11
  ret i32 %13
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ref_stack_index(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #7 {
  %3 = load ptr, ptr %0, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.ref_s, ptr %3, i64 1
  %5 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = icmp slt i64 %1, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %2
  %14 = and i64 %10, 4294967295
  %15 = icmp sgt i64 %14, %1
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = and i64 %1, 4294967295
  %18 = sub nsw i64 0, %17
  %19 = getelementptr inbounds %struct.ref_s, ptr %3, i64 %18
  br label %46

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  br label %23

23:                                               ; preds = %30, %20
  %24 = phi i64 [ %1, %20 ], [ %32, %30 ]
  %25 = phi ptr [ %22, %20 ], [ %28, %30 ]
  %26 = phi i32 [ %11, %20 ], [ %35, %30 ]
  %27 = getelementptr inbounds %struct.ref_s, ptr %25, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %23
  %31 = zext i32 %26 to i64
  %32 = sub nsw i64 %24, %31
  %33 = getelementptr inbounds %struct.ref_stack_block_s, ptr %28, i64 0, i32 1, i32 0, i32 1
  %34 = load i16, ptr %33, align 2, !tbaa !41
  %35 = zext i16 %34 to i32
  %36 = zext i16 %34 to i64
  %37 = icmp slt i64 %32, %36
  br i1 %37, label %38, label %23, !llvm.loop !45

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.ref_stack_block_s, ptr %28, i64 0, i32 1, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !15
  %41 = trunc i64 %32 to i32
  %42 = xor i32 %41, -1
  %43 = add i32 %35, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ref_s, ptr %40, i64 %44
  br label %46

46:                                               ; preds = %23, %2, %38, %16
  %47 = phi ptr [ %19, %16 ], [ %45, %38 ], [ null, %2 ], [ null, %23 ]
  ret ptr %47
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @ref_stack_counttomark(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !15
  %4 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = load ptr, ptr %0, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.ref_s, ptr %6, i64 1
  %8 = ptrtoint ptr %7 to i64
  %9 = ptrtoint ptr %5 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 4
  %12 = trunc i64 %11 to i32
  br label %13

13:                                               ; preds = %54, %1
  %14 = phi i32 [ undef, %1 ], [ %48, %54 ]
  %15 = phi i32 [ 0, %1 ], [ %49, %54 ]
  %16 = phi ptr [ %3, %1 ], [ %52, %54 ]
  %17 = phi ptr [ %5, %1 ], [ %56, %54 ]
  %18 = phi i32 [ %12, %1 ], [ %59, %54 ]
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %13
  %21 = add i32 %18, -1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ref_s, ptr %17, i64 %22
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = load i8, ptr %24, align 1, !tbaa !15
  %26 = icmp eq i8 %25, 12
  br i1 %26, label %32, label %38

27:                                               ; preds = %38
  %28 = getelementptr inbounds %struct.ref_s, ptr %39, i64 -1
  %29 = getelementptr inbounds i8, ptr %39, i64 -15
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = icmp eq i8 %30, 12
  br i1 %31, label %32, label %38, !llvm.loop !46

32:                                               ; preds = %27, %20
  %33 = phi i1 [ %19, %20 ], [ %42, %27 ]
  %34 = phi i32 [ %18, %20 ], [ %41, %27 ]
  %35 = add i32 %15, 1
  %36 = add i32 %35, %18
  %37 = sub i32 %36, %34
  br label %46

38:                                               ; preds = %20, %27
  %39 = phi ptr [ %28, %27 ], [ %23, %20 ]
  %40 = phi i32 [ %41, %27 ], [ %18, %20 ]
  %41 = add i32 %40, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %27, !llvm.loop !46

43:                                               ; preds = %38, %13
  %44 = phi i1 [ %19, %13 ], [ %42, %38 ]
  %45 = add i32 %18, %15
  br label %46

46:                                               ; preds = %43, %32
  %47 = phi i1 [ %33, %32 ], [ %44, %43 ]
  %48 = phi i32 [ %37, %32 ], [ %14, %43 ]
  %49 = phi i32 [ %15, %32 ], [ %45, %43 ]
  br i1 %47, label %50, label %60

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.ref_s, ptr %16, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !15
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ref_stack_block_s, ptr %52, i64 0, i32 1, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !15
  %57 = getelementptr inbounds %struct.ref_stack_block_s, ptr %52, i64 0, i32 1, i32 0, i32 1
  %58 = load i16, ptr %57, align 2, !tbaa !41
  %59 = zext i16 %58 to i32
  br label %13, !llvm.loop !47

60:                                               ; preds = %50, %46
  %61 = phi i32 [ 0, %50 ], [ %48, %46 ]
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ref_stack_store(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #2 {
  %8 = load i16, ptr %1, align 8, !tbaa !48
  %9 = and i16 %8, 12
  %10 = zext nneg i16 %9 to i32
  %11 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !27
  %13 = load ptr, ptr %0, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = lshr exact i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = add i32 %12, 1
  %22 = add i32 %21, %20
  %23 = icmp ult i32 %22, %2
  br i1 %23, label %178, label %24

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !19
  %27 = zext i16 %26 to i32
  %28 = icmp ult i32 %27, %2
  br i1 %28, label %178, label %29

29:                                               ; preds = %24
  %30 = icmp ne i32 %5, 0
  %31 = icmp ne i16 %9, 12
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %83

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !15
  %36 = getelementptr inbounds %struct.ref_s, ptr %13, i64 1
  %37 = ptrtoint ptr %36 to i64
  %38 = sub i64 %37, %17
  %39 = lshr exact i64 %38, 4
  %40 = trunc i64 %39 to i32
  br label %41

41:                                               ; preds = %73, %33
  %42 = phi i32 [ %3, %33 ], [ %67, %73 ]
  %43 = phi i32 [ %2, %33 ], [ %68, %73 ]
  %44 = phi ptr [ %35, %33 ], [ %71, %73 ]
  %45 = phi ptr [ %15, %33 ], [ %75, %73 ]
  %46 = phi i32 [ %40, %33 ], [ %78, %73 ]
  %47 = phi i32 [ undef, %33 ], [ %69, %73 ]
  %48 = icmp ugt i32 %46, %42
  br i1 %48, label %51, label %49

49:                                               ; preds = %41
  %50 = sub i32 %42, %46
  br label %66

51:                                               ; preds = %41
  %52 = sub i32 %46, %42
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ref_s, ptr %45, i64 %53
  %55 = tail call i32 @llvm.umin.i32(i32 %52, i32 %43)
  %56 = sub i32 %43, %55
  %57 = zext i32 %55 to i64
  %58 = sub nsw i64 0, %57
  %59 = getelementptr inbounds %struct.ref_s, ptr %54, i64 %58
  %60 = tail call i32 @refs_check_space(ptr noundef %59, i32 noundef %55, i32 noundef %10) #9
  %61 = icmp slt i32 %60, 0
  %62 = icmp eq i32 %56, 0
  %63 = select i1 %62, i32 2, i32 0
  %64 = select i1 %61, i32 1, i32 %63
  %65 = select i1 %61, i32 %60, i32 %47
  switch i32 %64, label %80 [
    i32 0, label %66
    i32 2, label %79
  ]

66:                                               ; preds = %51, %49
  %67 = phi i32 [ %50, %49 ], [ %64, %51 ]
  %68 = phi i32 [ %43, %49 ], [ %56, %51 ]
  %69 = phi i32 [ %47, %49 ], [ %65, %51 ]
  %70 = getelementptr inbounds %struct.ref_s, ptr %44, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !15
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.ref_stack_block_s, ptr %71, i64 0, i32 1, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !15
  %76 = getelementptr inbounds %struct.ref_stack_block_s, ptr %71, i64 0, i32 1, i32 0, i32 1
  %77 = load i16, ptr %76, align 2, !tbaa !41
  %78 = zext i16 %77 to i32
  br label %41, !llvm.loop !49

79:                                               ; preds = %51
  br label %80

80:                                               ; preds = %66, %51, %79
  %81 = phi i1 [ false, %51 ], [ true, %66 ], [ true, %79 ]
  %82 = phi i32 [ %65, %51 ], [ %69, %66 ], [ %65, %79 ]
  br i1 %81, label %83, label %178

83:                                               ; preds = %80, %29
  %84 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !15
  %86 = zext nneg i32 %2 to i64
  %87 = getelementptr inbounds %struct.ref_s, ptr %85, i64 %86
  %88 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !15
  %90 = load ptr, ptr %14, align 8, !tbaa !17
  %91 = load ptr, ptr %0, align 8, !tbaa !16
  %92 = getelementptr inbounds %struct.ref_s, ptr %91, i64 1
  %93 = ptrtoint ptr %92 to i64
  %94 = ptrtoint ptr %90 to i64
  %95 = sub i64 %93, %94
  %96 = lshr exact i64 %95, 4
  %97 = trunc i64 %96 to i32
  br label %98

98:                                               ; preds = %170, %83
  %99 = phi i32 [ %3, %83 ], [ %164, %170 ]
  %100 = phi ptr [ %87, %83 ], [ %165, %170 ]
  %101 = phi i32 [ %2, %83 ], [ %166, %170 ]
  %102 = phi ptr [ %89, %83 ], [ %168, %170 ]
  %103 = phi ptr [ %90, %83 ], [ %172, %170 ]
  %104 = phi i32 [ %97, %83 ], [ %175, %170 ]
  %105 = icmp ugt i32 %104, %99
  br i1 %105, label %108, label %106

106:                                              ; preds = %98
  %107 = sub i32 %99, %104
  br label %163

108:                                              ; preds = %98
  %109 = sub i32 %104, %99
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ref_s, ptr %103, i64 %110
  %112 = tail call i32 @llvm.umin.i32(i32 %109, i32 %101)
  %113 = sub i32 %101, %112
  switch i32 %4, label %160 [
    i32 -1, label %118
    i32 0, label %116
    i32 1, label %114
  ]

114:                                              ; preds = %108
  %115 = icmp eq i32 %112, 0
  br i1 %115, label %160, label %148

116:                                              ; preds = %108
  %117 = icmp eq i32 %112, 0
  br i1 %117, label %160, label %128

118:                                              ; preds = %108
  %119 = icmp eq i32 %112, 0
  br i1 %119, label %160, label %120

120:                                              ; preds = %118, %120
  %121 = phi i32 [ %124, %120 ], [ %112, %118 ]
  %122 = phi ptr [ %125, %120 ], [ %111, %118 ]
  %123 = phi ptr [ %126, %120 ], [ %100, %118 ]
  %124 = add i32 %121, -1
  %125 = getelementptr inbounds %struct.ref_s, ptr %122, i64 -1
  %126 = getelementptr inbounds %struct.ref_s, ptr %123, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %126, ptr noundef nonnull align 8 dereferenceable(16) %125, i64 16, i1 false), !tbaa.struct !20
  %127 = icmp eq i32 %124, 0
  br i1 %127, label %160, label %120, !llvm.loop !50

128:                                              ; preds = %116, %142
  %129 = phi i32 [ %132, %142 ], [ %112, %116 ]
  %130 = phi ptr [ %133, %142 ], [ %111, %116 ]
  %131 = phi ptr [ %134, %142 ], [ %100, %116 ]
  %132 = add i32 %129, -1
  %133 = getelementptr inbounds %struct.ref_s, ptr %130, i64 -1
  %134 = getelementptr inbounds %struct.ref_s, ptr %131, i64 -1
  %135 = load i16, ptr %134, align 8, !tbaa !48
  %136 = zext i16 %135 to i32
  %137 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 5), align 8, !tbaa !51
  %138 = and i32 %137, %136
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %128
  %141 = tail call i32 @alloc_save_change(ptr noundef nonnull @gs_imemory, ptr noundef nonnull %1, ptr noundef nonnull %134, ptr noundef %6) #9
  br label %142

142:                                              ; preds = %128, %140
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %134, ptr noundef nonnull align 8 dereferenceable(16) %133, i64 16, i1 false), !tbaa.struct !20
  %143 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !53
  %144 = load i16, ptr %134, align 8, !tbaa !48
  %145 = trunc i32 %143 to i16
  %146 = or i16 %144, %145
  store i16 %146, ptr %134, align 8, !tbaa !48
  %147 = icmp eq i32 %132, 0
  br i1 %147, label %160, label %128, !llvm.loop !54

148:                                              ; preds = %114, %148
  %149 = phi i32 [ %152, %148 ], [ %112, %114 ]
  %150 = phi ptr [ %153, %148 ], [ %111, %114 ]
  %151 = phi ptr [ %154, %148 ], [ %100, %114 ]
  %152 = add i32 %149, -1
  %153 = getelementptr inbounds %struct.ref_s, ptr %150, i64 -1
  %154 = getelementptr inbounds %struct.ref_s, ptr %151, i64 -1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %154, ptr noundef nonnull align 8 dereferenceable(16) %153, i64 16, i1 false), !tbaa.struct !20
  %155 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 6), align 4, !tbaa !53
  %156 = load i16, ptr %154, align 8, !tbaa !48
  %157 = trunc i32 %155 to i16
  %158 = or i16 %156, %157
  store i16 %158, ptr %154, align 8, !tbaa !48
  %159 = icmp eq i32 %152, 0
  br i1 %159, label %160, label %148, !llvm.loop !55

160:                                              ; preds = %148, %142, %120, %114, %116, %118, %108
  %161 = phi ptr [ %100, %108 ], [ %100, %118 ], [ %100, %116 ], [ %100, %114 ], [ %126, %120 ], [ %134, %142 ], [ %154, %148 ]
  %162 = icmp eq i32 %113, 0
  br i1 %162, label %176, label %163

163:                                              ; preds = %160, %106
  %164 = phi i32 [ %107, %106 ], [ 0, %160 ]
  %165 = phi ptr [ %100, %106 ], [ %161, %160 ]
  %166 = phi i32 [ %101, %106 ], [ %113, %160 ]
  %167 = getelementptr inbounds %struct.ref_s, ptr %102, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !15
  %169 = icmp eq ptr %168, null
  br i1 %169, label %176, label %170

170:                                              ; preds = %163
  %171 = getelementptr inbounds %struct.ref_stack_block_s, ptr %168, i64 0, i32 1, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !15
  %173 = getelementptr inbounds %struct.ref_stack_block_s, ptr %168, i64 0, i32 1, i32 0, i32 1
  %174 = load i16, ptr %173, align 2, !tbaa !41
  %175 = zext i16 %174 to i32
  br label %98, !llvm.loop !56

176:                                              ; preds = %163, %160
  %177 = trunc i32 %2 to i16
  store i16 %177, ptr %25, align 2, !tbaa !19
  br label %178

178:                                              ; preds = %7, %24, %80, %176
  %179 = phi i32 [ 0, %176 ], [ %82, %80 ], [ -15, %24 ], [ -15, %7 ]
  ret i32 %179
}

declare i32 @refs_check_space(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @alloc_save_change(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ref_stack_pop(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %0, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.ref_s, ptr %4, i64 1
  %6 = load ptr, ptr %3, align 8, !tbaa !17
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = icmp ult i32 %11, %1
  br i1 %12, label %13, label %29

13:                                               ; preds = %2, %13
  %14 = phi i32 [ %27, %13 ], [ %11, %2 ]
  %15 = phi ptr [ %22, %13 ], [ %6, %2 ]
  %16 = phi i32 [ %17, %13 ], [ %1, %2 ]
  %17 = sub i32 %16, %14
  %18 = getelementptr inbounds %struct.ref_s, ptr %15, i64 -1
  store ptr %18, ptr %0, align 8, !tbaa !16
  %19 = tail call i32 @ref_stack_pop_block(ptr noundef nonnull %0)
  %20 = load ptr, ptr %0, align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.ref_s, ptr %20, i64 1
  %22 = load ptr, ptr %3, align 8, !tbaa !17
  %23 = ptrtoint ptr %21 to i64
  %24 = ptrtoint ptr %22 to i64
  %25 = sub i64 %23, %24
  %26 = lshr exact i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = icmp ugt i32 %17, %27
  br i1 %28, label %13, label %29, !llvm.loop !57

29:                                               ; preds = %13, %2
  %30 = phi i32 [ %1, %2 ], [ %17, %13 ]
  %31 = phi ptr [ %4, %2 ], [ %20, %13 ]
  %32 = zext i32 %30 to i64
  %33 = sub nsw i64 0, %32
  %34 = getelementptr inbounds %struct.ref_s, ptr %31, i64 %33
  store ptr %34, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ref_stack_pop_block(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca %struct.ref_s, align 8
  %3 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = load ptr, ptr %0, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 1
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %4 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !15
  %15 = getelementptr inbounds %struct.ref_s, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !35
  br label %74

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.ref_stack_block_s, ptr %16, i64 0, i32 1, i32 0, i32 1
  %23 = load i16, ptr %22, align 2, !tbaa !41
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.ref_stack_block_s, ptr %16, i64 1
  %26 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 8
  %27 = load i32, ptr %26, align 4, !tbaa !30
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ref_s, ptr %25, i64 %28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !20
  %30 = add i32 %24, %11
  %31 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 11
  %32 = load i32, ptr %31, align 8, !tbaa !33
  %33 = icmp ugt i32 %30, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %21
  %35 = icmp eq i32 %32, %11
  br i1 %35, label %74, label %36

36:                                               ; preds = %34
  %37 = sub i32 %32, %11
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ref_s, ptr %4, i64 %38
  %40 = and i64 %9, 68719476720
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %39, ptr align 8 %4, i64 %40, i1 false)
  %41 = sub i32 %24, %37
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ref_s, ptr %29, i64 %42
  %44 = shl nuw nsw i64 %38, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr nonnull align 8 %43, i64 %44, i1 false)
  tail call void @refset_null(ptr noundef nonnull %43, i32 noundef %37) #9
  %45 = load i16, ptr %22, align 2, !tbaa !41
  %46 = trunc i32 %37 to i16
  %47 = sub i16 %45, %46
  store i16 %47, ptr %22, align 2, !tbaa !41
  %48 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !18
  store ptr %49, ptr %0, align 8, !tbaa !16
  %50 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 5
  %51 = load i32, ptr %50, align 4, !tbaa !27
  %52 = sub i32 %51, %37
  store i32 %52, ptr %50, align 4, !tbaa !27
  br label %74

53:                                               ; preds = %21
  %54 = zext i16 %23 to i64
  %55 = getelementptr inbounds %struct.ref_s, ptr %29, i64 %54
  %56 = and i64 %9, 68719476720
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %55, ptr align 8 %4, i64 %56, i1 false)
  store ptr %29, ptr %3, align 8, !tbaa !17
  %57 = load i32, ptr %31, align 8, !tbaa !33
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.ref_s, ptr %29, i64 %58
  %60 = getelementptr inbounds %struct.ref_s, ptr %59, i64 -1
  %61 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 2
  store ptr %60, ptr %61, align 8, !tbaa !18
  %62 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 16
  %63 = load ptr, ptr %62, align 8, !tbaa !38
  tail call void @gs_free_ref_array(ptr noundef %63, ptr noundef nonnull %12, ptr noundef nonnull @.str.1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %64 = add i32 %30, -1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ref_s, ptr %29, i64 %65
  store ptr %66, ptr %0, align 8, !tbaa !16
  %67 = load i32, ptr %31, align 8, !tbaa !33
  %68 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 4
  %69 = load i32, ptr %68, align 8, !tbaa !26
  %70 = sub i32 %69, %67
  store i32 %70, ptr %68, align 8, !tbaa !26
  %71 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 5
  %72 = load i32, ptr %71, align 4, !tbaa !27
  %73 = sub i32 %72, %24
  store i32 %73, ptr %71, align 4, !tbaa !27
  br label %74

74:                                               ; preds = %53, %36, %34, %18
  %75 = phi i32 [ %20, %18 ], [ -100, %34 ], [ 0, %36 ], [ 0, %53 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2)
  ret i32 %75
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

declare void @gs_free_ref_array(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @ref_stack_extend(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  %5 = load ptr, ptr %0, align 8, !tbaa !16
  %6 = icmp ult ptr %5, %4
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 14
  %9 = load i32, ptr %8, align 4, !tbaa !36
  br label %33

10:                                               ; preds = %2
  %11 = ptrtoint ptr %5 to i64
  %12 = ptrtoint ptr %4 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = add i32 %15, 1
  %17 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !18
  %19 = ptrtoint ptr %18 to i64
  %20 = sub i64 %19, %12
  %21 = ashr exact i64 %20, 4
  %22 = add nsw i64 %21, 1
  %23 = sdiv i64 %22, 3
  %24 = trunc i64 %23 to i32
  %25 = add i32 %24, %1
  %26 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 11
  %27 = load i32, ptr %26, align 8, !tbaa !33
  %28 = icmp ugt i32 %25, %27
  %29 = sub i32 %27, %1
  %30 = select i1 %28, i32 %29, i32 %24
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %16)
  %32 = tail call i32 @ref_stack_push_block(ptr noundef nonnull %0, i32 noundef %31, i32 noundef %1)
  br label %33

33:                                               ; preds = %10, %7
  %34 = phi i32 [ %9, %7 ], [ %32, %10 ]
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ref_stack_push_block(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = alloca %struct.ref_s, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 4
  %12 = trunc i64 %11 to i32
  %13 = add i32 %12, 1
  %14 = sub i32 %13, %1
  %15 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3
  %16 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  %18 = icmp ult i32 %13, %1
  br i1 %18, label %112, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !27
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !18
  %29 = ptrtoint ptr %28 to i64
  %30 = sub i64 %29, %9
  %31 = ashr exact i64 %30, 4
  %32 = zext i32 %2 to i64
  %33 = add nuw nsw i64 %26, %32
  %34 = add nsw i64 %33, %31
  %35 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 6, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !15
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %23
  %39 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 15
  %40 = load i32, ptr %39, align 8, !tbaa !37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %23, %19
  %43 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 14
  %44 = load i32, ptr %43, align 4, !tbaa !36
  br label %112

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 10
  %47 = load i32, ptr %46, align 4, !tbaa !32
  %48 = call i32 @gs_alloc_ref_array(ptr noundef nonnull %21, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %47, ptr noundef nonnull @.str.2) #9
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %112, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.ref_s, ptr %4, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !15
  %53 = getelementptr inbounds %struct.ref_stack_block_s, ptr %52, i64 1
  %54 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 8
  %55 = load i32, ptr %54, align 4, !tbaa !30
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 12
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i32 [ %55, %57 ], [ %62, %59 ]
  %61 = phi ptr [ %53, %57 ], [ %63, %59 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 8 dereferenceable(16) %58, i64 16, i1 false), !tbaa.struct !20
  %62 = add i32 %60, -1
  %63 = getelementptr inbounds %struct.ref_s, ptr %61, i64 1
  %64 = icmp eq i32 %62, 0
  br i1 %64, label %65, label %59, !llvm.loop !39

65:                                               ; preds = %59, %50
  %66 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 9
  %67 = load i32, ptr %66, align 8, !tbaa !31
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.tas_s, ptr %4, i64 0, i32 1
  %71 = load i16, ptr %70, align 2, !tbaa !19
  %72 = zext i16 %71 to i64
  %73 = getelementptr inbounds %struct.ref_s, ptr %52, i64 %72
  %74 = sext i32 %67 to i64
  %75 = sub nsw i64 0, %74
  %76 = getelementptr inbounds %struct.ref_s, ptr %73, i64 %75
  call void @refset_null(ptr noundef nonnull %76, i32 noundef %67) #9
  br label %77

77:                                               ; preds = %65, %69
  %78 = getelementptr inbounds %struct.ref_stack_block_s, ptr %52, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !20
  %79 = load i32, ptr %54, align 4, !tbaa !30
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ref_s, ptr %53, i64 %80
  %82 = getelementptr inbounds %struct.ref_stack_block_s, ptr %52, i64 0, i32 1, i32 1
  store ptr %81, ptr %82, align 8, !tbaa !15
  %83 = getelementptr inbounds %struct.ref_stack_block_s, ptr %52, i64 0, i32 1, i32 0, i32 1
  store i16 0, ptr %83, align 2, !tbaa !41
  %84 = load i32, ptr %54, align 4, !tbaa !30
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ref_s, ptr %53, i64 %85
  %87 = load ptr, ptr %6, align 8, !tbaa !17
  %88 = zext i32 %14 to i64
  %89 = getelementptr inbounds %struct.ref_s, ptr %87, i64 %88
  %90 = zext i32 %1 to i64
  %91 = shl nuw nsw i64 %90, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %86, ptr align 8 %89, i64 %91, i1 false)
  %92 = getelementptr inbounds %struct.ref_s, ptr %86, i64 %90
  %93 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 11
  %94 = load i32, ptr %93, align 8, !tbaa !33
  %95 = sub i32 %94, %1
  call void @refset_null(ptr noundef nonnull %92, i32 noundef %95) #9
  %96 = load ptr, ptr %6, align 8, !tbaa !17
  %97 = getelementptr inbounds %struct.ref_s, ptr %96, i64 %88
  call void @refset_null(ptr noundef %97, i32 noundef %1) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull align 8 dereferenceable(16) %15, i64 16, i1 false), !tbaa.struct !20
  %98 = load ptr, ptr %6, align 8, !tbaa !17
  %99 = getelementptr inbounds %struct.ref_stack_block_s, ptr %17, i64 0, i32 1, i32 1
  store ptr %98, ptr %99, align 8, !tbaa !15
  %100 = trunc i32 %14 to i16
  %101 = getelementptr inbounds %struct.ref_stack_block_s, ptr %17, i64 0, i32 1, i32 0, i32 1
  store i16 %100, ptr %101, align 2, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !20
  store ptr %86, ptr %6, align 8, !tbaa !17
  %102 = load i32, ptr %93, align 8, !tbaa !33
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.ref_s, ptr %86, i64 %103
  %105 = getelementptr inbounds %struct.ref_s, ptr %104, i64 -1
  store ptr %105, ptr %27, align 8, !tbaa !18
  %106 = getelementptr inbounds %struct.ref_s, ptr %92, i64 -1
  store ptr %106, ptr %0, align 8, !tbaa !16
  %107 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 4
  %108 = load i32, ptr %107, align 8, !tbaa !26
  %109 = add i32 %108, %102
  store i32 %109, ptr %107, align 8, !tbaa !26
  %110 = load i32, ptr %24, align 4, !tbaa !27
  %111 = add i32 %110, %14
  store i32 %111, ptr %24, align 4, !tbaa !27
  br label %112

112:                                              ; preds = %45, %3, %77, %42
  %113 = phi i32 [ %44, %42 ], [ 0, %77 ], [ -100, %3 ], [ %48, %45 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i32 %113
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ref_stack_push(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = load ptr, ptr %0, align 8, !tbaa !16
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = lshr exact i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %12, label %75

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 7
  br label %15

15:                                               ; preds = %12, %65
  %16 = phi i32 [ %10, %12 ], [ %73, %65 ]
  %17 = phi i64 [ %6, %12 ], [ %69, %65 ]
  %18 = phi ptr [ %4, %12 ], [ %67, %65 ]
  %19 = phi i32 [ undef, %12 ], [ %64, %65 ]
  %20 = phi i32 [ %1, %12 ], [ %66, %65 ]
  store ptr %18, ptr %0, align 8, !tbaa !16
  %21 = load ptr, ptr %13, align 8, !tbaa !17
  %22 = ptrtoint ptr %21 to i64
  %23 = sub i64 %17, %22
  %24 = ashr exact i64 %23, 4
  %25 = add nsw i64 %24, 1
  %26 = sdiv i64 %25, 3
  %27 = trunc i64 %26 to i32
  %28 = tail call i32 @ref_stack_push_block(ptr noundef nonnull %0, i32 noundef %27, i32 noundef %1)
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %63, label %30

30:                                               ; preds = %15
  %31 = sub i32 %1, %20
  %32 = load ptr, ptr %0, align 8, !tbaa !16
  %33 = getelementptr inbounds %struct.ref_s, ptr %32, i64 1
  %34 = load ptr, ptr %13, align 8, !tbaa !17
  %35 = ptrtoint ptr %33 to i64
  %36 = ptrtoint ptr %34 to i64
  %37 = sub i64 %35, %36
  %38 = lshr exact i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = icmp ugt i32 %31, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %30, %41
  %42 = phi i32 [ %55, %41 ], [ %39, %30 ]
  %43 = phi ptr [ %50, %41 ], [ %34, %30 ]
  %44 = phi i32 [ %45, %41 ], [ %31, %30 ]
  %45 = sub i32 %44, %42
  %46 = getelementptr inbounds %struct.ref_s, ptr %43, i64 -1
  store ptr %46, ptr %0, align 8, !tbaa !16
  %47 = tail call i32 @ref_stack_pop_block(ptr noundef nonnull %0)
  %48 = load ptr, ptr %0, align 8, !tbaa !16
  %49 = getelementptr inbounds %struct.ref_s, ptr %48, i64 1
  %50 = load ptr, ptr %13, align 8, !tbaa !17
  %51 = ptrtoint ptr %49 to i64
  %52 = ptrtoint ptr %50 to i64
  %53 = sub i64 %51, %52
  %54 = lshr exact i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = icmp ugt i32 %45, %55
  br i1 %56, label %41, label %57, !llvm.loop !57

57:                                               ; preds = %41, %30
  %58 = phi i32 [ %31, %30 ], [ %45, %41 ]
  %59 = phi ptr [ %32, %30 ], [ %48, %41 ]
  %60 = zext i32 %58 to i64
  %61 = sub nsw i64 0, %60
  %62 = getelementptr inbounds %struct.ref_s, ptr %59, i64 %61
  store ptr %62, ptr %0, align 8, !tbaa !16
  store i32 %1, ptr %14, align 8, !tbaa !29
  br label %63

63:                                               ; preds = %15, %57
  %64 = phi i32 [ %28, %57 ], [ %19, %15 ]
  br i1 %29, label %65, label %80

65:                                               ; preds = %63
  %66 = sub i32 %20, %16
  %67 = load ptr, ptr %3, align 8, !tbaa !18
  %68 = load ptr, ptr %0, align 8, !tbaa !16
  %69 = ptrtoint ptr %67 to i64
  %70 = ptrtoint ptr %68 to i64
  %71 = sub i64 %69, %70
  %72 = lshr exact i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = icmp ugt i32 %66, %73
  br i1 %74, label %15, label %75, !llvm.loop !58

75:                                               ; preds = %65, %2
  %76 = phi i32 [ %1, %2 ], [ %66, %65 ]
  %77 = phi ptr [ %5, %2 ], [ %68, %65 ]
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds %struct.ref_s, ptr %77, i64 %78
  store ptr %79, ptr %0, align 8, !tbaa !16
  br label %80

80:                                               ; preds = %63, %75
  %81 = phi i32 [ 0, %75 ], [ %64, %63 ]
  ret i32 %81
}

declare i32 @gs_alloc_ref_array(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @ref_stack_cleanup(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !15
  %5 = load ptr, ptr %0, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.ref_s, ptr %5, i64 1
  %7 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %5 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 4
  %13 = trunc i64 %12 to i32
  tail call void @refset_null(ptr noundef nonnull %6, i32 noundef %13) #9
  %14 = getelementptr inbounds %struct.ref_stack_block_s, ptr %4, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !20
  %15 = getelementptr inbounds %struct.ref_stack_s, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  %17 = getelementptr inbounds %struct.ref_stack_block_s, ptr %4, i64 0, i32 1, i32 1
  store ptr %16, ptr %17, align 8, !tbaa !15
  %18 = load ptr, ptr %0, align 8, !tbaa !16
  %19 = getelementptr inbounds %struct.ref_s, ptr %18, i64 1
  %20 = load ptr, ptr %15, align 8, !tbaa !17
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = lshr exact i64 %23, 4
  %25 = trunc i64 %24 to i16
  %26 = getelementptr inbounds %struct.ref_stack_block_s, ptr %4, i64 0, i32 1, i32 0, i32 1
  store i16 %25, ptr %26, align 2, !tbaa !41
  ret void
}

declare void @gs_reloc_refs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !12, i64 24}
!6 = !{!"ref_stack_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !13, i64 40, !13, i64 44, !10, i64 48, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76, !13, i64 80, !10, i64 88, !13, i64 104, !13, i64 108, !13, i64 112, !7, i64 120}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ref_s", !11, i64 0, !8, i64 8}
!11 = !{!"tas_s", !12, i64 0, !12, i64 2}
!12 = !{!"short", !8, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = !{!7, !7, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!6, !7, i64 0}
!17 = !{!6, !7, i64 8}
!18 = !{!6, !7, i64 16}
!19 = !{!10, !12, i64 2}
!20 = !{i64 0, i64 2, !21, i64 2, i64 2, !21, i64 8, i64 8, !22, i64 8, i64 2, !21, i64 8, i64 4, !24, i64 8, i64 8, !22, i64 8, i64 8, !14, i64 8, i64 8, !14, i64 8, i64 8, !14, i64 8, i64 8, !14, i64 8, i64 8, !14, i64 8, i64 8, !14, i64 8, i64 8, !14, i64 8, i64 8, !14, i64 8, i64 8, !14, i64 8, i64 8, !14, i64 8, i64 8, !14, i64 8, i64 8, !14, i64 8, i64 8, !14}
!21 = !{!12, !12, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !8, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !8, i64 0}
!26 = !{!6, !13, i64 40}
!27 = !{!6, !13, i64 44}
!28 = !{!6, !12, i64 48}
!29 = !{!6, !13, i64 64}
!30 = !{!6, !13, i64 68}
!31 = !{!6, !13, i64 72}
!32 = !{!6, !13, i64 76}
!33 = !{!6, !13, i64 80}
!34 = !{!6, !12, i64 88}
!35 = !{!6, !13, i64 104}
!36 = !{!6, !13, i64 108}
!37 = !{!6, !13, i64 112}
!38 = !{!6, !7, i64 120}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!42, !12, i64 18}
!42 = !{!"ref_stack_block_s", !10, i64 0, !10, i64 16}
!43 = !{!42, !12, i64 0}
!44 = !{!42, !12, i64 2}
!45 = distinct !{!45, !40}
!46 = distinct !{!46, !40}
!47 = distinct !{!47, !40}
!48 = !{!10, !12, i64 0}
!49 = distinct !{!49, !40}
!50 = distinct !{!50, !40}
!51 = !{!52, !13, i64 56}
!52 = !{!"gs_dual_memory_s", !7, i64 0, !8, i64 8, !13, i64 40, !13, i64 44, !7, i64 48, !13, i64 56, !13, i64 60}
!53 = !{!52, !13, i64 60}
!54 = distinct !{!54, !40}
!55 = distinct !{!55, !40}
!56 = distinct !{!56, !40}
!57 = distinct !{!57, !40}
!58 = distinct !{!58, !40}
