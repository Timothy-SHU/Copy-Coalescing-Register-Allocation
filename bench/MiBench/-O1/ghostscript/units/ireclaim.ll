; ModuleID = 'ireclaim.c'
source_filename = "ireclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ir_ = type { %struct.chunk_head_s, %struct.obj_header_s, [6 x %struct.ref_s] }
%struct.chunk_head_s = type { ptr, %struct.obj_header_s }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t }
%union._f = type { %struct._l }
%struct._l = type { i32 }
%union._t = type { ptr }
%struct.chunk_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i16, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.gs_gc_root_s = type { ptr, ptr, ptr }
%struct.gs_memory_status_s = type { i64, i64 }
%struct.gs_ref_memory_s = type { %struct.gs_memory_procs_s, ptr, i32, i32, ptr, i32, %struct.gs_memory_gc_status_s, i64, ptr, ptr, %struct.chunk_s, ptr, %struct.chunk_locator_s, i64, i64, i64, %struct.lost_, ptr, i32, ptr, ptr, ptr, %struct.gs_memory_status_s, [101 x ptr] }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_gc_status_s = type { i64, i64, ptr, i32, i32, i64 }
%struct.chunk_locator_s = type { ptr, ptr }
%struct.lost_ = type { i64, i64, i64 }

@ireclaim_l2_op_defs.op_defs_ = internal constant [1 x %struct.op_def] [%struct.op_def { ptr null, ptr @ireclaim_init }], align 16
@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@d_stack = external global %struct.ref_stack_s, align 8
@ref_ref_stacks = external local_unnamed_addr global [3 x %struct.ref_s], align 16
@e_stack = external global %struct.ref_stack_s, align 8
@o_stack = external global %struct.ref_stack_s, align 8
@ref_static_stacks = external local_unnamed_addr global %struct.ref_s, align 8
@ptr_ref_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str = private unnamed_addr constant [11 x i8] c"gs_gc_main\00", align 1
@ref_systemdict = external local_unnamed_addr global %struct.ref_s, align 8
@st_refs = external constant %struct.gs_memory_struct_type_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @ireclaim_l2_op_defs() local_unnamed_addr #0 {
  ret ptr @ireclaim_l2_op_defs.op_defs_
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @ireclaim_init() #1 {
  store ptr @ireclaim, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 4), align 8, !tbaa !5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ireclaim(ptr noundef %0, i32 noundef %1) #2 {
  %3 = alloca %struct.ir_, align 8
  %4 = alloca %struct.chunk_s, align 8
  %5 = alloca %struct.chunk_s, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gs_gc_root_s, align 8
  %8 = alloca %struct.gs_memory_status_s, align 8
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #6
  %11 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1
  br label %12

12:                                               ; preds = %26, %10
  %13 = phi i32 [ 0, %10 ], [ %27, %26 ]
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds [4 x ptr], ptr %11, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %16, i64 0, i32 6, i32 5
  %20 = load i64, ptr %19, align 8, !tbaa !12
  %21 = icmp slt i64 %20, 1
  %22 = icmp ult i32 %13, 3
  %23 = and i1 %21, %22
  br i1 %23, label %26, label %28

24:                                               ; preds = %12
  %25 = icmp ult i32 %13, 3
  br i1 %25, label %26, label %28

26:                                               ; preds = %24, %18
  %27 = add nuw nsw i32 %13, 1
  br label %12, !llvm.loop !22

28:                                               ; preds = %18, %24
  %29 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %16, i64 0, i32 18
  %30 = load ptr, ptr %29, align 8, !tbaa !24
  call void %30(ptr noundef %16, ptr noundef nonnull %8) #6
  %31 = load i64, ptr %8, align 8, !tbaa !26
  %32 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %16, i64 0, i32 6, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !27
  %34 = icmp ult i64 %31, %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #6
  br i1 %34, label %41, label %128

35:                                               ; preds = %2
  %36 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1
  %37 = lshr i32 %1, 2
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [4 x ptr], ptr %36, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  br label %41

41:                                               ; preds = %35, %28
  %42 = phi ptr [ %16, %28 ], [ %40, %35 ]
  %43 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %42, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !28
  %45 = icmp ne i32 %44, 12
  %46 = zext i1 %45 to i32
  %47 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1
  %48 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 3
  %49 = load ptr, ptr %48, align 8, !tbaa !11
  %50 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !11
  %52 = getelementptr inbounds %struct.gs_dual_memory_s, ptr %0, i64 0, i32 1, i32 0, i64 1
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #6
  %54 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 2
  store ptr %54, ptr %6, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #6
  call void @alloc_close_chunk(ptr noundef %49) #6
  %55 = icmp eq ptr %51, %49
  br i1 %55, label %57, label %56

56:                                               ; preds = %41
  call void @alloc_close_chunk(ptr noundef %51) #6
  br label %57

57:                                               ; preds = %56, %41
  call void @alloc_close_chunk(ptr noundef %53) #6
  call void @ref_stack_cleanup(ptr noundef nonnull @d_stack) #6
  %58 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 2, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef nonnull align 16 dereferenceable(16) @ref_ref_stacks, i64 16, i1 false), !tbaa.struct !30
  %59 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 2, i64 2, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %60, ptr noundef nonnull align 8 dereferenceable(128) @d_stack, i64 128, i1 false), !tbaa.struct !35
  call void @ref_stack_cleanup(ptr noundef nonnull @e_stack) #6
  %61 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 2, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([3 x %struct.ref_s], ptr @ref_ref_stacks, i64 0, i64 1), i64 16, i1 false), !tbaa.struct !30
  %62 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 2, i64 3, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %63, ptr noundef nonnull align 8 dereferenceable(128) @e_stack, i64 128, i1 false), !tbaa.struct !35
  call void @ref_stack_cleanup(ptr noundef nonnull @o_stack) #6
  %64 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 2, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, ptr noundef nonnull align 16 dereferenceable(16) getelementptr inbounds ([3 x %struct.ref_s], ptr @ref_ref_stacks, i64 0, i64 2), i64 16, i1 false), !tbaa.struct !30
  %65 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 2, i64 4, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %66, ptr noundef nonnull align 8 dereferenceable(128) @o_stack, i64 128, i1 false), !tbaa.struct !35
  %67 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 2, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %67, ptr noundef nonnull align 8 dereferenceable(16) @ref_static_stacks, i64 16, i1 false), !tbaa.struct !30
  %68 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 2, i64 0, i32 1
  store ptr %67, ptr %68, align 8, !tbaa !11
  store i16 1028, ptr %54, align 8, !tbaa !37
  %69 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 2, i64 0, i32 0, i32 1
  store i16 4, ptr %69, align 2, !tbaa !40
  %70 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 2, i64 5
  %71 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 1
  %72 = load i8, ptr %71, align 8
  %73 = or i8 %72, 1
  store i8 %73, ptr %71, align 8
  %74 = load i32, ptr %71, align 8
  %75 = and i32 %74, 1
  %76 = or disjoint i32 %75, 6
  store i32 %76, ptr %71, align 8
  %77 = getelementptr inbounds %struct.ir_, ptr %3, i64 1
  %78 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 1, i32 0, i32 0, i32 1
  store i32 96, ptr %78, align 4, !tbaa !11
  %79 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 1, i32 0, i32 0, i32 2
  store ptr @st_refs, ptr %79, align 8, !tbaa !11
  call void @alloc_init_chunk(ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %77, i32 noundef 0, ptr noundef null) #6
  %80 = getelementptr inbounds %struct.chunk_s, ptr %4, i64 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !41
  %82 = getelementptr inbounds %struct.chunk_s, ptr %4, i64 0, i32 2
  store ptr %81, ptr %82, align 8, !tbaa !42
  call void @alloc_link_chunk(ptr noundef nonnull %4, ptr noundef %53) #6
  %83 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 2, i64 5, i32 1
  store i64 0, ptr %83, align 8, !tbaa !11
  store i16 2816, ptr %70, align 8, !tbaa !37
  %84 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %53, i64 0, i32 16
  %85 = load ptr, ptr %84, align 8, !tbaa !43
  call void %85(ptr noundef %53, ptr noundef nonnull %7, ptr noundef nonnull @ptr_ref_procs, ptr noundef nonnull %6, ptr noundef nonnull @.str) #6
  %86 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 2, i64 1, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !11
  %88 = icmp eq ptr %87, null
  br i1 %88, label %112, label %89

89:                                               ; preds = %57
  %90 = getelementptr inbounds %struct.ir_, ptr %3, i64 0, i32 2, i64 1, i32 0, i32 1
  %91 = load i16, ptr %90, align 2, !tbaa !40
  %92 = zext i16 %91 to i64
  %93 = getelementptr inbounds %struct.ref_s, ptr %87, i64 %92
  %94 = getelementptr inbounds %struct.obj_header_s, ptr %87, i64 -1
  %95 = getelementptr %struct.obj_header_s, ptr %87, i64 -3, i32 0, i32 0, i32 2
  %96 = load i8, ptr %94, align 8
  %97 = or i8 %96, 1
  store i8 %97, ptr %94, align 8
  %98 = load i32, ptr %94, align 8
  %99 = and i32 %98, 1
  %100 = or disjoint i32 %99, 6
  store i32 %100, ptr %94, align 8
  %101 = getelementptr inbounds %struct.ref_s, ptr %93, i64 1
  %102 = ptrtoint ptr %101 to i64
  %103 = ptrtoint ptr %87 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = getelementptr %struct.obj_header_s, ptr %87, i64 -1, i32 0, i32 0, i32 1
  store i32 %105, ptr %106, align 4, !tbaa !11
  %107 = getelementptr %struct.obj_header_s, ptr %87, i64 -1, i32 0, i32 0, i32 2
  store ptr @st_refs, ptr %107, align 8, !tbaa !11
  call void @alloc_init_chunk(ptr noundef nonnull %5, ptr noundef %95, ptr noundef nonnull %101, i32 noundef 0, ptr noundef null) #6
  %108 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !41
  %110 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 2
  store ptr %109, ptr %110, align 8, !tbaa !42
  call void @alloc_link_chunk(ptr noundef nonnull %5, ptr noundef %53) #6
  %111 = getelementptr inbounds %struct.ref_s, ptr %87, i64 %92, i32 1
  store i64 0, ptr %111, align 8, !tbaa !11
  store i16 2816, ptr %93, align 8, !tbaa !37
  br label %112

112:                                              ; preds = %89, %57
  call void @file_gc_prepare() #6
  call void @gs_reclaim(ptr noundef nonnull %47, i32 noundef %46) #6
  %113 = load ptr, ptr %86, align 8, !tbaa !11
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  call void @alloc_unlink_chunk(ptr noundef nonnull %5, ptr noundef %53) #6
  br label %116

116:                                              ; preds = %115, %112
  %117 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %53, i64 0, i32 17
  %118 = load ptr, ptr %117, align 8, !tbaa !44
  call void %118(ptr noundef %53, ptr noundef nonnull %7, ptr noundef nonnull @.str) #6
  call void @alloc_unlink_chunk(ptr noundef nonnull %4, ptr noundef %53) #6
  %119 = load ptr, ptr %59, align 8, !tbaa !11
  store ptr %119, ptr getelementptr inbounds ([3 x %struct.ref_s], ptr @ref_ref_stacks, i64 0, i64 0, i32 1), align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) @d_stack, ptr noundef nonnull align 8 dereferenceable(128) %119, i64 128, i1 false), !tbaa.struct !35
  %120 = load ptr, ptr %62, align 8, !tbaa !11
  store ptr %120, ptr getelementptr inbounds ([3 x %struct.ref_s], ptr @ref_ref_stacks, i64 0, i64 1, i32 1), align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) @e_stack, ptr noundef nonnull align 8 dereferenceable(128) %120, i64 128, i1 false), !tbaa.struct !35
  %121 = load ptr, ptr %65, align 8, !tbaa !11
  store ptr %121, ptr getelementptr inbounds ([3 x %struct.ref_s], ptr @ref_ref_stacks, i64 0, i64 2, i32 1), align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) @o_stack, ptr noundef nonnull align 8 dereferenceable(128) %121, i64 128, i1 false), !tbaa.struct !35
  call void @dstack_gc_cleanup() #6
  call void @alloc_open_chunk(ptr noundef %53) #6
  br i1 %55, label %123, label %122

122:                                              ; preds = %116
  call void @alloc_open_chunk(ptr noundef %51) #6
  br label %123

123:                                              ; preds = %116, %122
  call void @alloc_open_chunk(ptr noundef %49) #6
  %124 = call i32 @ref_stack_count(ptr noundef nonnull @d_stack) #6
  %125 = add i32 %124, -1
  %126 = zext i32 %125 to i64
  %127 = call ptr @ref_stack_index(ptr noundef nonnull @d_stack, i64 noundef %126) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @ref_systemdict, ptr noundef nonnull align 8 dereferenceable(16) %127, i64 16, i1 false), !tbaa.struct !30
  call void @dict_set_top() #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #6
  call void @ialloc_set_limit(ptr noundef %42) #6
  call void @ialloc_reset_requested(ptr noundef %0) #6
  br label %128

128:                                              ; preds = %28, %123
  %129 = phi i32 [ 0, %123 ], [ -25, %28 ]
  ret i32 %129
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @ialloc_set_limit(ptr noundef) local_unnamed_addr #4

declare void @ialloc_reset_requested(ptr noundef) local_unnamed_addr #4

declare void @alloc_close_chunk(ptr noundef) local_unnamed_addr #4

declare void @ref_stack_cleanup(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @file_gc_prepare() local_unnamed_addr #4

declare void @gs_reclaim(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @alloc_unlink_chunk(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @dstack_gc_cleanup() local_unnamed_addr #4

declare void @alloc_open_chunk(ptr noundef) local_unnamed_addr #4

declare i32 @ref_stack_count(ptr noundef) local_unnamed_addr #4

declare ptr @ref_stack_index(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @dict_set_top() local_unnamed_addr #4

declare void @alloc_init_chunk(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @alloc_link_chunk(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 48}
!6 = !{!"gs_dual_memory_s", !7, i64 0, !8, i64 8, !10, i64 40, !10, i64 44, !7, i64 48, !10, i64 56, !10, i64 60}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!13, !16, i64 224}
!13 = !{!"gs_ref_memory_s", !14, i64 0, !7, i64 160, !10, i64 168, !10, i64 172, !7, i64 176, !10, i64 184, !15, i64 192, !16, i64 232, !7, i64 240, !7, i64 248, !17, i64 256, !7, i64 432, !19, i64 440, !16, i64 456, !16, i64 464, !16, i64 472, !20, i64 480, !7, i64 504, !10, i64 512, !7, i64 520, !7, i64 528, !7, i64 536, !21, i64 544, !8, i64 560}
!14 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!15 = !{!"gs_memory_gc_status_s", !16, i64 0, !16, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !16, i64 32}
!16 = !{!"long", !8, i64 0}
!17 = !{!"chunk_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !10, i64 88, !10, i64 92, !7, i64 96, !18, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168}
!18 = !{!"short", !8, i64 0}
!19 = !{!"chunk_locator_s", !7, i64 0, !7, i64 8}
!20 = !{!"lost_", !16, i64 0, !16, i64 8, !16, i64 16}
!21 = !{!"gs_memory_status_s", !16, i64 0, !16, i64 8}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!25, !7, i64 144}
!25 = !{!"gs_memory_s", !14, i64 0}
!26 = !{!21, !16, i64 0}
!27 = !{!13, !16, i64 200}
!28 = !{!13, !10, i64 184}
!29 = !{!7, !7, i64 0}
!30 = !{i64 0, i64 2, !31, i64 2, i64 2, !31, i64 8, i64 8, !32, i64 8, i64 2, !31, i64 8, i64 4, !33, i64 8, i64 8, !32, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29, i64 8, i64 8, !29}
!31 = !{!18, !18, i64 0}
!32 = !{!16, !16, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"float", !8, i64 0}
!35 = !{i64 0, i64 8, !29, i64 8, i64 8, !29, i64 16, i64 8, !29, i64 24, i64 2, !31, i64 26, i64 2, !31, i64 32, i64 8, !32, i64 32, i64 2, !31, i64 32, i64 4, !33, i64 32, i64 8, !32, i64 32, i64 8, !29, i64 32, i64 8, !29, i64 32, i64 8, !29, i64 32, i64 8, !29, i64 32, i64 8, !29, i64 32, i64 8, !29, i64 32, i64 8, !29, i64 32, i64 8, !29, i64 32, i64 8, !29, i64 32, i64 8, !29, i64 32, i64 8, !29, i64 32, i64 8, !29, i64 32, i64 8, !29, i64 40, i64 4, !36, i64 44, i64 4, !36, i64 48, i64 2, !31, i64 50, i64 2, !31, i64 56, i64 8, !32, i64 56, i64 2, !31, i64 56, i64 4, !33, i64 56, i64 8, !32, i64 56, i64 8, !29, i64 56, i64 8, !29, i64 56, i64 8, !29, i64 56, i64 8, !29, i64 56, i64 8, !29, i64 56, i64 8, !29, i64 56, i64 8, !29, i64 56, i64 8, !29, i64 56, i64 8, !29, i64 56, i64 8, !29, i64 56, i64 8, !29, i64 56, i64 8, !29, i64 56, i64 8, !29, i64 64, i64 4, !36, i64 68, i64 4, !36, i64 72, i64 4, !36, i64 76, i64 4, !36, i64 80, i64 4, !36, i64 88, i64 2, !31, i64 90, i64 2, !31, i64 96, i64 8, !32, i64 96, i64 2, !31, i64 96, i64 4, !33, i64 96, i64 8, !32, i64 96, i64 8, !29, i64 96, i64 8, !29, i64 96, i64 8, !29, i64 96, i64 8, !29, i64 96, i64 8, !29, i64 96, i64 8, !29, i64 96, i64 8, !29, i64 96, i64 8, !29, i64 96, i64 8, !29, i64 96, i64 8, !29, i64 96, i64 8, !29, i64 96, i64 8, !29, i64 96, i64 8, !29, i64 104, i64 4, !36, i64 108, i64 4, !36, i64 112, i64 4, !36, i64 120, i64 8, !29}
!36 = !{!10, !10, i64 0}
!37 = !{!38, !18, i64 0}
!38 = !{!"ref_s", !39, i64 0, !8, i64 8}
!39 = !{!"tas_s", !18, i64 0, !18, i64 2}
!40 = !{!38, !18, i64 2}
!41 = !{!17, !7, i64 40}
!42 = !{!17, !7, i64 16}
!43 = !{!25, !7, i64 128}
!44 = !{!25, !7, i64 136}
