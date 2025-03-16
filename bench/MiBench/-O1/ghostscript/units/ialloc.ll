; ModuleID = 'ialloc.c'
source_filename = "ialloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ref_memory_s = type { %struct.gs_memory_procs_s, ptr, i32, i32, ptr, i32, %struct.gs_memory_gc_status_s, i64, ptr, ptr, %struct.chunk_s, ptr, %struct.chunk_locator_s, i64, i64, i64, %struct.lost_, ptr, i32, ptr, ptr, ptr, %struct.gs_memory_status_s, [101 x ptr] }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_gc_status_s = type { i64, i64, ptr, i32, i32, i64 }
%struct.chunk_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i16, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.chunk_locator_s = type { ptr, ptr }
%struct.lost_ = type { i64, i64, i64 }
%struct.gs_memory_status_s = type { i64, i64 }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t }
%union._f = type { %struct._l }
%struct._l = type { i32 }
%union._t = type { ptr }

@gs_imemory = dso_local local_unnamed_addr global %struct.gs_dual_memory_s zeroinitializer, align 8
@st_refs = external constant %struct.gs_memory_struct_type_s, align 8

; Function Attrs: nounwind uwtable
define dso_local void @ialloc_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @ialloc_alloc_state(ptr noundef %0, i32 noundef %1) #8
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @ialloc_alloc_state(ptr noundef %0, i32 noundef %1) #8
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ %4, %3 ]
  %10 = tail call ptr @ialloc_alloc_state(ptr noundef %0, i32 noundef %1) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 0), i8 0, i64 32, i1 false), !tbaa !5
  store ptr %4, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 3), align 8, !tbaa !5
  store ptr %9, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 2), align 8, !tbaa !5
  store ptr %10, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 1, i32 0, i64 1), align 8, !tbaa !5
  store ptr null, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 4), align 8, !tbaa !8
  %11 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %9, i64 0, i32 5
  store i32 8, ptr %11, align 8, !tbaa !12
  %12 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %4, i64 0, i32 5
  store i32 12, ptr %12, align 8, !tbaa !12
  %13 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %4, i64 0, i32 4
  store ptr %9, ptr %13, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %9, i64 0, i32 4
  store ptr %9, ptr %14, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %10, i64 0, i32 5
  store i32 4, ptr %15, align 8, !tbaa !12
  store ptr %9, ptr @gs_imemory, align 8, !tbaa !23
  %16 = load i32, ptr %11, align 8, !tbaa !12
  store i32 %16, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @ialloc_alloc_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ialloc_set_space(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1
  %4 = lshr i32 %1, 2
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  store ptr %7, ptr %0, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %7, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !12
  %10 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 2
  store i32 %9, ptr %10, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @imemory_space(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !12
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @ialloc_reset_requested(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %3, i64 0, i32 6, i32 5
  store i64 0, ptr %4, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %6, i64 0, i32 6, i32 5
  store i64 0, ptr %7, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 3
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %9, i64 0, i32 6, i32 5
  store i64 0, ptr %10, align 8, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_alloc_ref_array(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.chunk_locator_s, align 8
  %7 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  %9 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %5
  %13 = zext i32 %3 to i64
  %14 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !28
  %16 = ptrtoint ptr %15 to i64
  %17 = ptrtoint ptr %10 to i64
  %18 = sub i64 %16, %17
  %19 = lshr i64 %18, 4
  %20 = icmp ugt i64 %19, %13
  br i1 %20, label %21, label %39

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !29
  %24 = ptrtoint ptr %8 to i64
  %25 = ptrtoint ptr %23 to i64
  %26 = shl nuw nsw i64 %13, 4
  %27 = add i64 %26, %24
  %28 = sub i64 %27, %25
  %29 = icmp ult i64 %28, 800
  br i1 %29, label %30, label %39

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.ref_s, ptr %8, i64 -1
  %32 = getelementptr %struct.obj_header_s, ptr %23, i64 -1, i32 0, i32 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !5
  %34 = trunc i64 %26 to i32
  %35 = add i32 %33, %34
  store i32 %35, ptr %32, align 4, !tbaa !5
  %36 = load ptr, ptr %9, align 8, !tbaa !27
  %37 = getelementptr inbounds i8, ptr %36, i64 %26
  store ptr %37, ptr %9, align 8, !tbaa !27
  store ptr %37, ptr %7, align 8, !tbaa !26
  %38 = getelementptr inbounds %struct.ref_s, ptr %37, i64 -1
  store i16 3072, ptr %38, align 8, !tbaa !30
  br label %67

39:                                               ; preds = %21, %12, %5
  %40 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !33
  %42 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = add i32 %3, 1
  %45 = tail call ptr %43(ptr noundef %0, i32 noundef %44, ptr noundef nonnull @st_refs, ptr noundef %4) #8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %77, label %47

47:                                               ; preds = %39
  %48 = zext i32 %3 to i64
  %49 = getelementptr inbounds %struct.ref_s, ptr %45, i64 %48
  store i16 3072, ptr %49, align 8, !tbaa !30
  %50 = load ptr, ptr %40, align 8, !tbaa !33
  %51 = icmp eq ptr %50, %41
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load ptr, ptr %9, align 8, !tbaa !27
  %54 = getelementptr inbounds %struct.ref_s, ptr %49, i64 1
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52, %47
  %57 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 3
  store ptr %45, ptr %57, align 8, !tbaa !29
  %58 = getelementptr inbounds %struct.ref_s, ptr %49, i64 1
  store ptr %58, ptr %7, align 8, !tbaa !26
  %59 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 12
  store i32 1, ptr %59, align 4, !tbaa !36
  br label %67

60:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #8
  store ptr %0, ptr %6, align 8, !tbaa !37
  %61 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !38
  %63 = getelementptr inbounds %struct.chunk_locator_s, ptr %6, i64 0, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !39
  %64 = call i32 @chunk_locate_ptr(ptr noundef nonnull %45, ptr noundef nonnull %6) #8
  %65 = load ptr, ptr %63, align 8, !tbaa !39
  %66 = getelementptr inbounds %struct.chunk_s, ptr %65, i64 0, i32 12
  store i32 1, ptr %66, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #8
  br label %67

67:                                               ; preds = %60, %56, %30
  %68 = phi ptr [ %31, %30 ], [ %45, %56 ], [ %45, %60 ]
  %69 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !5
  %70 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 5
  %71 = load i32, ptr %70, align 8, !tbaa !12
  %72 = or i32 %71, %2
  %73 = trunc i32 %72 to i16
  %74 = add i16 %73, 1024
  store i16 %74, ptr %1, align 8, !tbaa !30
  %75 = trunc i32 %3 to i16
  %76 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  store i16 %75, ptr %76, align 2, !tbaa !41
  br label %77

77:                                               ; preds = %39, %67
  %78 = phi i32 [ 0, %67 ], [ -25, %39 ]
  ret i32 %78
}

declare i32 @chunk_locate_ptr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gs_resize_ref_array(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef readnone %3) local_unnamed_addr #6 {
  %5 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !41
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = icmp ult i32 %7, %2
  br i1 %10, label %45, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds i8, ptr %1, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %14 = icmp eq i8 %13, 4
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  %16 = sub nsw i32 %7, %2
  %17 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !27
  %21 = icmp eq ptr %18, %20
  %22 = zext i16 %6 to i64
  %23 = getelementptr %struct.ref_s, ptr %9, i64 %22
  %24 = getelementptr %struct.ref_s, ptr %23, i64 1
  %25 = icmp eq ptr %24, %18
  %26 = select i1 %21, i1 %25, i1 false
  %27 = zext i32 %16 to i64
  %28 = shl nuw nsw i64 %27, 4
  br i1 %26, label %29, label %39

29:                                               ; preds = %15
  %30 = sub nsw i64 0, %28
  %31 = getelementptr inbounds i8, ptr %18, i64 %30
  store ptr %31, ptr %17, align 8, !tbaa !26
  store ptr %31, ptr %19, align 8, !tbaa !27
  %32 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !29
  %34 = getelementptr %struct.obj_header_s, ptr %33, i64 -1, i32 0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !5
  %36 = trunc i64 %28 to i32
  %37 = sub i32 %35, %36
  store i32 %37, ptr %34, align 4, !tbaa !5
  %38 = getelementptr inbounds %struct.ref_s, ptr %31, i64 -1
  store i16 3072, ptr %38, align 8, !tbaa !30
  br label %43

39:                                               ; preds = %15
  %40 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 16, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !42
  %42 = add i64 %41, %28
  store i64 %42, ptr %40, align 8, !tbaa !42
  br label %43

43:                                               ; preds = %39, %29
  %44 = trunc i32 %2 to i16
  store i16 %44, ptr %5, align 2, !tbaa !41
  br label %45

45:                                               ; preds = %4, %11, %43
  %46 = phi i32 [ 0, %43 ], [ -100, %11 ], [ -100, %4 ]
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_free_ref_array(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.chunk_locator_s, align 8
  %5 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  %6 = load i16, ptr %5, align 2, !tbaa !41
  %7 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds i8, ptr %1, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 4
  br i1 %11, label %12, label %62

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !26
  %15 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  %17 = icmp eq ptr %14, %16
  %18 = zext i16 %6 to i64
  %19 = getelementptr %struct.ref_s, ptr %8, i64 %18
  %20 = getelementptr %struct.ref_s, ptr %19, i64 1
  %21 = icmp eq ptr %20, %14
  %22 = select i1 %17, i1 %21, i1 false
  br i1 %22, label %23, label %37

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !29
  %26 = icmp eq ptr %8, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !43
  tail call void %29(ptr noundef %0, ptr noundef %8, ptr noundef %2) #8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  br label %68

30:                                               ; preds = %23
  %31 = zext i16 %6 to i32
  %32 = shl nuw nsw i32 %31, 4
  %33 = getelementptr %struct.obj_header_s, ptr %25, i64 -1, i32 0, i32 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !5
  %35 = sub i32 %34, %32
  store i32 %35, ptr %33, align 4, !tbaa !5
  %36 = getelementptr inbounds %struct.ref_s, ptr %8, i64 1
  store ptr %36, ptr %15, align 8, !tbaa !27
  store ptr %36, ptr %13, align 8, !tbaa !26
  store i16 3072, ptr %8, align 8, !tbaa !30
  br label %68

37:                                               ; preds = %12
  %38 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !44
  %40 = lshr i32 %39, 4
  %41 = zext nneg i32 %40 to i64
  %42 = add nsw i64 %41, -1
  %43 = icmp ugt i64 %42, %18
  br i1 %43, label %62, label %44

44:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  store ptr %0, ptr %4, align 8, !tbaa !37
  %45 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !38
  %47 = getelementptr inbounds %struct.chunk_locator_s, ptr %4, i64 0, i32 1
  store ptr %46, ptr %47, align 8, !tbaa !39
  %48 = call i32 @chunk_locate_ptr(ptr noundef %8, ptr noundef nonnull %4) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %47, align 8, !tbaa !39
  %52 = getelementptr inbounds %struct.chunk_s, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !45
  %54 = getelementptr inbounds %struct.obj_header_s, ptr %53, i64 1
  %55 = icmp eq ptr %8, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.chunk_s, ptr %51, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = icmp eq ptr %20, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  call void @alloc_free_chunk(ptr noundef %51, ptr noundef %0) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  br label %68

61:                                               ; preds = %44, %50, %56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  br label %62

62:                                               ; preds = %61, %3, %37
  %63 = zext i16 %6 to i64
  %64 = shl nuw nsw i64 %63, 4
  %65 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 16, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !42
  %67 = add i64 %66, %64
  store i64 %67, ptr %65, align 8, !tbaa !42
  br label %68

68:                                               ; preds = %60, %27, %30, %62
  ret void
}

declare void @alloc_free_chunk(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @gs_alloc_string_ref(ptr noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = tail call ptr %7(ptr noundef %0, i32 noundef %3, ptr noundef %4) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.ref_s, ptr %1, i64 0, i32 1
  store ptr %8, ptr %11, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !12
  %14 = or i32 %13, %2
  %15 = trunc i32 %14 to i16
  %16 = add i16 %15, 4608
  store i16 %16, ptr %1, align 8, !tbaa !30
  %17 = trunc i32 %3 to i16
  %18 = getelementptr inbounds %struct.tas_s, ptr %1, i64 0, i32 1
  store i16 %17, ptr %18, align 2, !tbaa !41
  br label %19

19:                                               ; preds = %5, %10
  %20 = phi i32 [ 0, %10 ], [ -25, %5 ]
  ret i32 %20
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 48}
!9 = !{!"gs_dual_memory_s", !10, i64 0, !6, i64 8, !11, i64 40, !11, i64 44, !10, i64 48, !11, i64 56, !11, i64 60}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !11, i64 184}
!13 = !{!"gs_ref_memory_s", !14, i64 0, !10, i64 160, !11, i64 168, !11, i64 172, !10, i64 176, !11, i64 184, !15, i64 192, !16, i64 232, !10, i64 240, !10, i64 248, !17, i64 256, !10, i64 432, !19, i64 440, !16, i64 456, !16, i64 464, !16, i64 472, !20, i64 480, !10, i64 504, !11, i64 512, !10, i64 520, !10, i64 528, !10, i64 536, !21, i64 544, !6, i64 560}
!14 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!15 = !{!"gs_memory_gc_status_s", !16, i64 0, !16, i64 8, !10, i64 16, !11, i64 24, !11, i64 28, !16, i64 32}
!16 = !{!"long", !6, i64 0}
!17 = !{!"chunk_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !11, i64 88, !11, i64 92, !10, i64 96, !18, i64 104, !10, i64 112, !10, i64 120, !11, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168}
!18 = !{!"short", !6, i64 0}
!19 = !{!"chunk_locator_s", !10, i64 0, !10, i64 8}
!20 = !{!"lost_", !16, i64 0, !16, i64 8, !16, i64 16}
!21 = !{!"gs_memory_status_s", !16, i64 0, !16, i64 8}
!22 = !{!13, !10, i64 176}
!23 = !{!9, !10, i64 0}
!24 = !{!9, !11, i64 40}
!25 = !{!13, !16, i64 224}
!26 = !{!13, !10, i64 288}
!27 = !{!13, !10, i64 272}
!28 = !{!13, !10, i64 296}
!29 = !{!13, !10, i64 280}
!30 = !{!31, !18, i64 0}
!31 = !{!"ref_s", !32, i64 0, !6, i64 8}
!32 = !{!"tas_s", !18, i64 0, !18, i64 2}
!33 = !{!13, !10, i64 432}
!34 = !{!35, !10, i64 48}
!35 = !{!"gs_memory_s", !14, i64 0}
!36 = !{!13, !11, i64 348}
!37 = !{!19, !10, i64 0}
!38 = !{!13, !10, i64 248}
!39 = !{!19, !10, i64 8}
!40 = !{!17, !11, i64 92}
!41 = !{!31, !18, i64 2}
!42 = !{!13, !16, i64 488}
!43 = !{!35, !10, i64 88}
!44 = !{!13, !11, i64 172}
!45 = !{!17, !10, i64 8}
!46 = !{!17, !10, i64 56}
!47 = !{!35, !10, i64 96}
