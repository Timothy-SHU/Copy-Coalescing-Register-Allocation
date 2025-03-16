; ModuleID = 'gsfcmap.c'
source_filename = "gsfcmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_cid_system_info_s = type { %struct.gs_const_string_s, %struct.gs_const_string_s, i32 }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gs_cmap_s = type { %struct.gs_cid_system_info_s, %struct.gs_uid_s, i32, %struct.gx_code_map_s, %struct.gx_code_map_s, ptr, ptr }
%struct.gs_uid_s = type { i64, ptr }
%struct.gx_code_map_s = type { i8, i8, i8, %union.bd_, %union.d_, ptr }
%union.bd_ = type { i8 }
%union.d_ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"gs_cmap\00", align 1
@st_cmap = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 128, ptr @.str, ptr null, ptr null, ptr @cmap_enum_ptrs, ptr @cmap_reloc_ptrs, ptr null }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"gx_code_map\00", align 1
@st_code_map = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 24, ptr @.str.1, ptr null, ptr null, ptr @code_map_enum_ptrs, ptr @code_map_reloc_ptrs, ptr null }, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"gx_code_map[]\00", align 1
@st_code_map_element = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 24, ptr @.str.2, ptr null, ptr null, ptr @code_map_elt_enum_ptrs, ptr @code_map_elt_reloc_ptrs, ptr null }, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"gs_cid_system_info\00", align 1
@st_cid_system_info = dso_local local_unnamed_addr constant %struct.gs_memory_struct_type_s { i32 40, ptr @.str.3, ptr null, ptr null, ptr @cid_si_enum_ptrs, ptr @cid_si_reloc_ptrs, ptr null }, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@ptr_const_string_procs = external constant %struct.gs_ptr_procs_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @cmap_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %22 [
    i32 0, label %7
    i32 1, label %10
    i32 2, label %13
    i32 3, label %16
    i32 4, label %5
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gs_cid_system_info_s, ptr %0, i64 0, i32 1
  br label %19

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gs_cmap_s, ptr %0, i64 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  br label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.gs_cmap_s, ptr %0, i64 0, i32 3, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  br label %19

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.gs_cmap_s, ptr %0, i64 0, i32 4, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !16
  br label %19

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.gs_cmap_s, ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !17
  br label %19

19:                                               ; preds = %16, %13, %10, %7, %5
  %20 = phi ptr [ %6, %5 ], [ %9, %7 ], [ %12, %10 ], [ %15, %13 ], [ %18, %16 ]
  %21 = phi ptr [ @ptr_const_string_procs, %5 ], [ @ptr_struct_procs, %7 ], [ @ptr_struct_procs, %10 ], [ @ptr_struct_procs, %13 ], [ @ptr_struct_procs, %16 ]
  store ptr %20, ptr %3, align 8, !tbaa !18
  br label %22

22:                                               ; preds = %19, %4
  %23 = phi ptr [ null, %4 ], [ %21, %19 ]
  ret ptr %23
}

; Function Attrs: nounwind uwtable
define internal void @cmap_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  tail call void @gs_reloc_const_string(ptr noundef %0, ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.gs_cid_system_info_s, ptr %0, i64 0, i32 1
  tail call void @gs_reloc_const_string(ptr noundef nonnull %4, ptr noundef %2) #5
  %5 = getelementptr inbounds %struct.gs_cmap_s, ptr %0, i64 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %6, ptr noundef %2) #5
  store ptr %7, ptr %5, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.gs_cmap_s, ptr %0, i64 0, i32 3, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %9, ptr noundef %2) #5
  store ptr %10, ptr %8, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct.gs_cmap_s, ptr %0, i64 0, i32 4, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %12, ptr noundef %2) #5
  store ptr %13, ptr %11, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.gs_cmap_s, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  %16 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %15, ptr noundef %2) #5
  store ptr %16, ptr %14, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @code_map_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #1 {
  switch i32 %2, label %27 [
    i32 0, label %5
    i32 1, label %8
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  br label %25

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 3
  switch i8 %11, label %25 [
    i8 1, label %12
    i8 2, label %22
  ]

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = getelementptr inbounds %struct.gs_cmap_s, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !20
  %17 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 4
  %18 = load i64, ptr %17, align 8, !tbaa !16
  %19 = getelementptr inbounds %struct.gs_cmap_s, ptr %14, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !17
  %21 = tail call i32 %16(i64 noundef %18, ptr noundef %20) #5
  br label %25

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  br label %25

25:                                               ; preds = %8, %12, %22, %5
  %26 = phi ptr [ %7, %5 ], [ %24, %22 ], [ null, %12 ], [ null, %8 ]
  store ptr %26, ptr %3, align 8, !tbaa !18
  br label %27

27:                                               ; preds = %25, %4
  %28 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %25 ]
  ret ptr %28
}

; Function Attrs: nounwind uwtable
define internal void @code_map_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 3
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !16
  %11 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %10, ptr noundef %2) #5
  store ptr %11, ptr %9, align 8, !tbaa !16
  br label %12

12:                                               ; preds = %3, %8
  %13 = getelementptr inbounds %struct.gx_code_map_s, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %14, ptr noundef %2) #5
  store ptr %15, ptr %13, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @code_map_elt_enum_ptrs(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #1 {
  %5 = icmp ult i32 %1, 24
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  %7 = udiv i32 %1, 24
  %8 = urem i32 %2, %7
  %9 = zext nneg i32 %8 to i64
  %10 = mul nuw nsw i64 %9, 24
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = udiv i32 %2, %7
  switch i32 %12, label %35 [
    i32 0, label %13
    i32 1, label %16
  ]

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.gx_code_map_s, ptr %11, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  br label %33

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.gx_code_map_s, ptr %11, i64 0, i32 2
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 3
  switch i8 %19, label %33 [
    i8 1, label %20
    i8 2, label %30
  ]

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gx_code_map_s, ptr %11, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !19
  %23 = getelementptr inbounds %struct.gs_cmap_s, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !20
  %25 = getelementptr inbounds %struct.gx_code_map_s, ptr %11, i64 0, i32 4
  %26 = load i64, ptr %25, align 8, !tbaa !16
  %27 = getelementptr inbounds %struct.gs_cmap_s, ptr %22, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !17
  %29 = tail call i32 %24(i64 noundef %26, ptr noundef %28) #5
  br label %33

30:                                               ; preds = %16
  %31 = getelementptr inbounds %struct.gx_code_map_s, ptr %11, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  br label %33

33:                                               ; preds = %16, %20, %13, %30
  %34 = phi ptr [ %32, %30 ], [ %15, %13 ], [ null, %20 ], [ null, %16 ]
  store ptr %34, ptr %3, align 8, !tbaa !18
  br label %35

35:                                               ; preds = %33, %6, %4
  %36 = phi ptr [ null, %4 ], [ null, %6 ], [ @ptr_struct_procs, %33 ]
  ret ptr %36
}

; Function Attrs: nounwind uwtable
define internal void @code_map_elt_reloc_ptrs(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = icmp ult i32 %1, 24
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = udiv i32 %1, 24
  br label %7

7:                                                ; preds = %5, %18
  %8 = phi i32 [ %22, %18 ], [ %6, %5 ]
  %9 = phi ptr [ %23, %18 ], [ %0, %5 ]
  %10 = getelementptr inbounds %struct.gx_code_map_s, ptr %9, i64 0, i32 2
  %11 = load i8, ptr %10, align 2
  %12 = and i8 %11, 3
  %13 = icmp eq i8 %12, 2
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.gx_code_map_s, ptr %9, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %16, ptr noundef %2) #5
  store ptr %17, ptr %15, align 8, !tbaa !16
  br label %18

18:                                               ; preds = %7, %14
  %19 = getelementptr inbounds %struct.gx_code_map_s, ptr %9, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !19
  %21 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %20, ptr noundef %2) #5
  store ptr %21, ptr %19, align 8, !tbaa !19
  %22 = add nsw i32 %8, -1
  %23 = getelementptr inbounds i8, ptr %9, i64 24
  %24 = icmp eq i32 %22, 0
  br i1 %24, label %25, label %7, !llvm.loop !21

25:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef ptr @cid_si_enum_ptrs(ptr noundef %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #2 {
  switch i32 %2, label %9 [
    i32 0, label %7
    i32 1, label %5
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gs_cid_system_info_s, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %4, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %4 ]
  store ptr %8, ptr %3, align 8, !tbaa !18
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ null, %4 ], [ @ptr_const_string_procs, %7 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @cid_si_reloc_ptrs(ptr noundef %0, i32 %1, ptr noundef %2) #1 {
  tail call void @gs_reloc_const_string(ptr noundef %0, ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.gs_cid_system_info_s, ptr %0, i64 0, i32 1
  tail call void @gs_reloc_const_string(ptr noundef nonnull %4, ptr noundef %2) #5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @gs_cmap_decode_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) local_unnamed_addr #3 {
  %6 = load i32, ptr %2, align 4, !tbaa !23
  %7 = getelementptr inbounds %struct.gs_cmap_s, ptr %0, i64 0, i32 3
  %8 = tail call fastcc i32 @code_map_decode_next(ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = load i64, ptr %4, align 8, !tbaa !24
  %12 = icmp eq i64 %11, 2147483647
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32, ptr %2, align 4, !tbaa !23
  store i32 %6, ptr %2, align 4, !tbaa !23
  %15 = getelementptr inbounds %struct.gs_cmap_s, ptr %0, i64 0, i32 4
  %16 = tail call fastcc i32 @code_map_decode_next(ptr noundef nonnull %15, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef nonnull %4)
  store i32 %14, ptr %2, align 4, !tbaa !23
  br label %17

17:                                               ; preds = %5, %10, %13
  %18 = phi i32 [ %16, %13 ], [ %8, %10 ], [ %8, %5 ]
  ret i32 %18
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @code_map_decode_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #3 {
  %6 = getelementptr inbounds %struct.gs_const_string_s, ptr %1, i64 0, i32 1
  br label %7

7:                                                ; preds = %87, %5
  %8 = phi ptr [ %0, %5 ], [ %88, %87 ]
  %9 = phi i32 [ 0, %5 ], [ %89, %87 ]
  %10 = phi i32 [ undef, %5 ], [ %91, %87 ]
  %11 = getelementptr inbounds %struct.gx_code_map_s, ptr %8, i64 0, i32 2
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 3
  switch i8 %13, label %87 [
    i8 0, label %14
    i8 1, label %43
    i8 2, label %46
  ]

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.gx_code_map_s, ptr %8, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !16
  store i64 %16, ptr %4, align 8, !tbaa !24
  %17 = load i8, ptr %11, align 2
  %18 = lshr i8 %17, 2
  %19 = and i8 %18, 3
  %20 = add nuw nsw i8 %19, 1
  %21 = zext nneg i8 %20 to i32
  br label %22

22:                                               ; preds = %43, %14
  %23 = phi i32 [ 0, %43 ], [ %21, %14 ]
  %24 = getelementptr inbounds %struct.gx_code_map_s, ptr %8, i64 0, i32 1
  %25 = load i8, ptr %24, align 1, !tbaa !25
  %26 = zext i8 %25 to i32
  %27 = icmp ugt i32 %9, %26
  br i1 %27, label %85, label %28

28:                                               ; preds = %22
  %29 = load i8, ptr %11, align 2
  %30 = and i8 %29, 16
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load i8, ptr %8, align 8, !tbaa !26
  %34 = zext i8 %33 to i32
  %35 = sub nsw i32 %9, %34
  %36 = zext i32 %35 to i64
  %37 = load i64, ptr %4, align 8, !tbaa !24
  %38 = add i64 %37, %36
  store i64 %38, ptr %4, align 8, !tbaa !24
  br label %39

39:                                               ; preds = %32, %28
  %40 = getelementptr inbounds %struct.gx_code_map_s, ptr %8, i64 0, i32 3
  %41 = load i8, ptr %40, align 1, !tbaa !16
  %42 = zext i8 %41 to i32
  store i32 %42, ptr %3, align 4, !tbaa !23
  br label %87

43:                                               ; preds = %7
  %44 = getelementptr inbounds %struct.gx_code_map_s, ptr %8, i64 0, i32 4
  %45 = load i64, ptr %44, align 8, !tbaa !16
  store i64 %45, ptr %4, align 8, !tbaa !24
  br label %22

46:                                               ; preds = %7
  %47 = load i32, ptr %2, align 4, !tbaa !23
  %48 = load i32, ptr %6, align 8, !tbaa !27
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %87

50:                                               ; preds = %46
  %51 = load ptr, ptr %1, align 8, !tbaa !28
  %52 = add i32 %47, 1
  store i32 %52, ptr %2, align 4, !tbaa !23
  %53 = zext i32 %47 to i64
  %54 = getelementptr inbounds i8, ptr %51, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !16
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds %struct.gx_code_map_s, ptr %8, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !16
  %59 = load i8, ptr %58, align 8, !tbaa !26
  %60 = icmp ult i8 %55, %59
  br i1 %60, label %85, label %61

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.gx_code_map_s, ptr %8, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !16
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %61
  %66 = zext i8 %63 to i32
  %67 = add nuw nsw i32 %66, 1
  br label %68

68:                                               ; preds = %65, %68
  %69 = phi i32 [ %78, %68 ], [ %67, %65 ]
  %70 = phi i32 [ %77, %68 ], [ 0, %65 ]
  %71 = add i32 %69, %70
  %72 = lshr i32 %71, 1
  %73 = zext nneg i32 %72 to i64
  %74 = getelementptr inbounds %struct.gx_code_map_s, ptr %58, i64 %73
  %75 = load i8, ptr %74, align 8, !tbaa !26
  %76 = icmp ult i8 %55, %75
  %77 = select i1 %76, i32 %70, i32 %72
  %78 = select i1 %76, i32 %72, i32 %69
  %79 = add i32 %77, 1
  %80 = icmp ult i32 %79, %78
  br i1 %80, label %68, label %81, !llvm.loop !29

81:                                               ; preds = %68, %61
  %82 = phi i32 [ 0, %61 ], [ %77, %68 ]
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.gx_code_map_s, ptr %58, i64 %83
  br label %87

85:                                               ; preds = %50, %22
  %86 = phi i32 [ %56, %50 ], [ %9, %22 ]
  store i64 2147483647, ptr %4, align 8, !tbaa !24
  br label %87

87:                                               ; preds = %7, %46, %85, %81, %39
  %88 = phi ptr [ %84, %81 ], [ %8, %85 ], [ %8, %39 ], [ %8, %46 ], [ %8, %7 ]
  %89 = phi i32 [ %56, %81 ], [ %86, %85 ], [ %9, %39 ], [ %9, %46 ], [ %9, %7 ]
  %90 = phi i1 [ true, %81 ], [ false, %85 ], [ false, %39 ], [ false, %46 ], [ false, %7 ]
  %91 = phi i32 [ %10, %81 ], [ 0, %85 ], [ %23, %39 ], [ -15, %46 ], [ -10, %7 ]
  br i1 %90, label %7, label %92

92:                                               ; preds = %87
  ret i32 %91
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @gs_reloc_const_string(ptr noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !9, i64 48}
!6 = !{!"gs_cmap_s", !7, i64 0, !13, i64 40, !12, i64 56, !15, i64 64, !15, i64 88, !9, i64 112, !9, i64 120}
!7 = !{!"gs_cid_system_info_s", !8, i64 0, !8, i64 16, !12, i64 32}
!8 = !{!"gs_const_string_s", !9, i64 0, !12, i64 8}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"int", !10, i64 0}
!13 = !{!"gs_uid_s", !14, i64 0, !9, i64 8}
!14 = !{!"long", !10, i64 0}
!15 = !{!"gx_code_map_s", !10, i64 0, !10, i64 1, !12, i64 2, !12, i64 2, !12, i64 2, !10, i64 3, !10, i64 8, !9, i64 16}
!16 = !{!10, !10, i64 0}
!17 = !{!6, !9, i64 120}
!18 = !{!9, !9, i64 0}
!19 = !{!15, !9, i64 16}
!20 = !{!6, !9, i64 112}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!12, !12, i64 0}
!24 = !{!14, !14, i64 0}
!25 = !{!15, !10, i64 1}
!26 = !{!15, !10, i64 0}
!27 = !{!8, !12, i64 8}
!28 = !{!8, !9, i64 0}
!29 = distinct !{!29, !22}
