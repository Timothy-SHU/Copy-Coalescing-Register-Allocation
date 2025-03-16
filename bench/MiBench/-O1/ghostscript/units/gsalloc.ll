; ModuleID = 'gsalloc.c'
source_filename = "gsalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gs_ref_memory_s = type { %struct.gs_memory_procs_s, ptr, i32, i32, ptr, i32, %struct.gs_memory_gc_status_s, i64, ptr, ptr, %struct.chunk_s, ptr, %struct.chunk_locator_s, i64, i64, i64, %struct.lost_, ptr, i32, ptr, ptr, ptr, %struct.gs_memory_status_s, [101 x ptr] }
%struct.gs_memory_gc_status_s = type { i64, i64, ptr, i32, i32, i64 }
%struct.chunk_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i16, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.chunk_locator_s = type { ptr, ptr }
%struct.lost_ = type { i64, i64, i64 }
%struct.gs_memory_status_s = type { i64, i64 }
%struct.obj_header_s = type { %union._d }
%union._d = type { %struct.obj_header_data_s }
%struct.obj_header_data_s = type { %union._f, i32, %union._t }
%union._f = type { %struct._l }
%struct._l = type { i32 }
%union._t = type { ptr }
%struct.gs_gc_root_s = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [14 x i8] c"gs_ref_memory\00", align 1
@st_ref_memory = dso_local constant %struct.gs_memory_struct_type_s { i32 1368, ptr @.str, ptr null, ptr null, ptr @ref_memory_enum_ptrs, ptr @ref_memory_reloc_ptrs, ptr null }, align 8
@gs_ref_memory_procs = dso_local local_unnamed_addr constant %struct.gs_memory_procs_s { ptr @i_alloc_bytes, ptr @i_alloc_bytes_immovable, ptr @i_alloc_struct, ptr @i_alloc_struct_immovable, ptr @i_alloc_byte_array, ptr @i_alloc_byte_array_immovable, ptr @i_alloc_struct_array, ptr @i_alloc_struct_array_immovable, ptr @i_resize_object, ptr @i_object_size, ptr @i_object_type, ptr @i_free_object, ptr @i_alloc_string, ptr @i_alloc_string_immovable, ptr @i_resize_string, ptr @i_free_string, ptr @i_register_root, ptr @i_unregister_root, ptr @i_status, ptr @i_enable_free }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"chunk_t\00", align 1
@st_chunk = dso_local constant %struct.gs_memory_struct_type_s { i32 176, ptr @.str.1, ptr null, ptr null, ptr @chunk_enum_ptrs, ptr @chunk_reloc_ptrs, ptr null }, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"alloc_free_chunk(data)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"alloc_free_chunk(chunk struct)\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"ialloc_solo(chunk)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"ialloc_solo\00", align 1
@st_bytes = external constant %struct.gs_memory_struct_type_s, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"large object chunk\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"chunk\00", align 1
@st_free = external constant %struct.gs_memory_struct_type_s, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"large string chunk\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @ref_memory_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %12 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 19
  br label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 20
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  store ptr %11, ptr %3, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @ref_memory_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #12
  store ptr %6, ptr %4, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #12
  %10 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 21
  store ptr %9, ptr %10, align 8, !tbaa !21
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @i_alloc_bytes(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2) #1 {
  %4 = icmp ult i32 %1, 801
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = add nuw nsw i32 %1, 7
  %7 = lshr i32 %6, 3
  %8 = zext nneg i32 %7 to i64
  %9 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 23, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %10, align 8, !tbaa !5
  store ptr %13, ptr %9, align 8, !tbaa !5
  %14 = getelementptr %struct.obj_header_s, ptr %10, i64 -1, i32 0, i32 0, i32 1
  store i32 %1, ptr %14, align 4, !tbaa !22
  %15 = getelementptr %struct.obj_header_s, ptr %10, i64 -1, i32 0, i32 0, i32 2
  store ptr @st_bytes, ptr %15, align 8, !tbaa !22
  br label %43

16:                                               ; preds = %5, %3
  %17 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !23
  %19 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !24
  %21 = ptrtoint ptr %18 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = zext i32 %1 to i64
  %25 = add nuw nsw i64 %24, 40
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %41, label %27

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !25
  %30 = icmp ugt i32 %29, %1
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = add i32 %1, 23
  %33 = and i32 %32, -8
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %20, i64 %34
  store ptr %35, ptr %19, align 8, !tbaa !24
  %36 = load i8, ptr %20, align 8
  %37 = and i8 %36, -2
  store i8 %37, ptr %20, align 8
  %38 = getelementptr inbounds %struct.obj_header_data_s, ptr %20, i64 0, i32 1
  store i32 %1, ptr %38, align 4, !tbaa !22
  %39 = getelementptr inbounds %struct.obj_header_data_s, ptr %20, i64 0, i32 2
  store ptr @st_bytes, ptr %39, align 8, !tbaa !22
  %40 = getelementptr inbounds %struct.obj_header_s, ptr %20, i64 1
  br label %43

41:                                               ; preds = %27, %16
  %42 = tail call fastcc ptr @alloc_obj(ptr noundef %0, i64 noundef %24, ptr noundef nonnull @st_bytes, i32 noundef 0)
  br label %43

43:                                               ; preds = %41, %12, %31
  %44 = phi ptr [ %10, %12 ], [ %40, %31 ], [ %42, %41 ]
  ret ptr %44
}

; Function Attrs: nounwind uwtable
define internal ptr @i_alloc_bytes_immovable(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2) #1 {
  %4 = zext i32 %1 to i64
  %5 = add nuw nsw i64 %4, 7
  %6 = and i64 %5, 8589934584
  %7 = add nuw nsw i64 %6, 40
  %8 = tail call fastcc ptr @alloc_add_chunk(ptr noundef %0, i64 noundef %7, i32 noundef 0, ptr noundef nonnull @.str.6)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.chunk_s, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !26
  %13 = getelementptr i8, ptr %12, i64 %6
  %14 = getelementptr i8, ptr %13, i64 16
  store ptr %14, ptr %11, align 8, !tbaa !26
  %15 = load i8, ptr %12, align 8
  %16 = or i8 %15, 1
  store i8 %16, ptr %12, align 8
  %17 = load i32, ptr %12, align 8
  %18 = and i32 %17, 7
  store i32 %18, ptr %12, align 8
  %19 = getelementptr inbounds %struct.obj_header_data_s, ptr %12, i64 0, i32 1
  store i32 %1, ptr %19, align 4, !tbaa !22
  br label %20

20:                                               ; preds = %10, %3
  %21 = phi ptr [ %12, %10 ], [ undef, %3 ]
  br i1 %9, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.obj_header_data_s, ptr %21, i64 0, i32 2
  store ptr @st_bytes, ptr %23, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.obj_header_s, ptr %21, i64 1
  br label %25

25:                                               ; preds = %20, %22
  %26 = phi ptr [ %24, %22 ], [ null, %20 ]
  ret ptr %26
}

; Function Attrs: nounwind uwtable
define internal ptr @i_alloc_struct(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = load i32, ptr %1, align 8, !tbaa !27
  %5 = icmp ult i32 %4, 801
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = add nuw nsw i32 %4, 7
  %8 = lshr i32 %7, 3
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 23, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr %11, align 8, !tbaa !5
  store ptr %14, ptr %10, align 8, !tbaa !5
  %15 = getelementptr %struct.obj_header_s, ptr %11, i64 -1, i32 0, i32 0, i32 1
  store i32 %4, ptr %15, align 4, !tbaa !22
  %16 = getelementptr %struct.obj_header_s, ptr %11, i64 -1, i32 0, i32 0, i32 2
  store ptr %1, ptr %16, align 8, !tbaa !22
  br label %44

17:                                               ; preds = %6, %3
  %18 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  %20 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !24
  %22 = ptrtoint ptr %19 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = zext i32 %4 to i64
  %26 = add nuw nsw i64 %25, 40
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %42, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !25
  %31 = icmp ult i32 %4, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = add i32 %4, 23
  %34 = and i32 %33, -8
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %21, i64 %35
  store ptr %36, ptr %20, align 8, !tbaa !24
  %37 = load i8, ptr %21, align 8
  %38 = and i8 %37, -2
  store i8 %38, ptr %21, align 8
  %39 = getelementptr inbounds %struct.obj_header_data_s, ptr %21, i64 0, i32 1
  store i32 %4, ptr %39, align 4, !tbaa !22
  %40 = getelementptr inbounds %struct.obj_header_data_s, ptr %21, i64 0, i32 2
  store ptr %1, ptr %40, align 8, !tbaa !22
  %41 = getelementptr inbounds %struct.obj_header_s, ptr %21, i64 1
  br label %44

42:                                               ; preds = %28, %17
  %43 = tail call fastcc ptr @alloc_obj(ptr noundef %0, i64 noundef %25, ptr noundef nonnull %1, i32 noundef 0)
  br label %44

44:                                               ; preds = %42, %13, %32
  %45 = phi ptr [ %11, %13 ], [ %41, %32 ], [ %43, %42 ]
  ret ptr %45
}

; Function Attrs: nounwind uwtable
define internal ptr @i_alloc_struct_immovable(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = load i32, ptr %1, align 8, !tbaa !27
  %5 = zext i32 %4 to i64
  %6 = add nuw nsw i64 %5, 7
  %7 = and i64 %6, 8589934584
  %8 = add nuw nsw i64 %7, 40
  %9 = tail call fastcc ptr @alloc_add_chunk(ptr noundef %0, i64 noundef %8, i32 noundef 0, ptr noundef nonnull @.str.6)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !26
  %14 = getelementptr i8, ptr %13, i64 %7
  %15 = getelementptr i8, ptr %14, i64 16
  store ptr %15, ptr %12, align 8, !tbaa !26
  %16 = load i8, ptr %13, align 8
  %17 = or i8 %16, 1
  store i8 %17, ptr %13, align 8
  %18 = load i32, ptr %13, align 8
  %19 = and i32 %18, 7
  store i32 %19, ptr %13, align 8
  %20 = getelementptr inbounds %struct.obj_header_data_s, ptr %13, i64 0, i32 1
  store i32 %4, ptr %20, align 4, !tbaa !22
  br label %21

21:                                               ; preds = %11, %3
  %22 = phi ptr [ %13, %11 ], [ undef, %3 ]
  br i1 %10, label %26, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.obj_header_data_s, ptr %22, i64 0, i32 2
  store ptr %1, ptr %24, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.obj_header_s, ptr %22, i64 1
  br label %26

26:                                               ; preds = %21, %23
  %27 = phi ptr [ %25, %23 ], [ null, %21 ]
  ret ptr %27
}

; Function Attrs: nounwind uwtable
define internal ptr @i_alloc_byte_array(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #1 {
  %5 = zext i32 %1 to i64
  %6 = zext i32 %2 to i64
  %7 = mul nuw i64 %6, %5
  %8 = tail call fastcc ptr @alloc_obj(ptr noundef %0, i64 noundef %7, ptr noundef nonnull @st_bytes, i32 noundef 0)
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define internal ptr @i_alloc_byte_array_immovable(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3) #1 {
  %5 = zext i32 %1 to i64
  %6 = zext i32 %2 to i64
  %7 = mul nuw i64 %6, %5
  %8 = add nuw i64 %7, 7
  %9 = and i64 %8, -8
  %10 = add nuw i64 %9, 40
  %11 = tail call fastcc ptr @alloc_add_chunk(ptr noundef %0, i64 noundef %10, i32 noundef 0, ptr noundef nonnull @.str.6)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.chunk_s, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !26
  %16 = getelementptr i8, ptr %15, i64 %9
  %17 = getelementptr i8, ptr %16, i64 16
  store ptr %17, ptr %14, align 8, !tbaa !26
  %18 = load i8, ptr %15, align 8
  %19 = or i8 %18, 1
  store i8 %19, ptr %15, align 8
  %20 = load i32, ptr %15, align 8
  %21 = lshr i64 %7, 29
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, -8
  %24 = and i32 %20, 7
  %25 = or disjoint i32 %24, %23
  store i32 %25, ptr %15, align 8
  %26 = trunc i64 %7 to i32
  %27 = getelementptr inbounds %struct.obj_header_data_s, ptr %15, i64 0, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !22
  br label %28

28:                                               ; preds = %13, %4
  %29 = phi ptr [ %15, %13 ], [ undef, %4 ]
  br i1 %12, label %33, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.obj_header_data_s, ptr %29, i64 0, i32 2
  store ptr @st_bytes, ptr %31, align 8, !tbaa !22
  %32 = getelementptr inbounds %struct.obj_header_s, ptr %29, i64 1
  br label %33

33:                                               ; preds = %28, %30
  %34 = phi ptr [ %32, %30 ], [ null, %28 ]
  ret ptr %34
}

; Function Attrs: nounwind uwtable
define internal ptr @i_alloc_struct_array(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3) #1 {
  %5 = zext i32 %1 to i64
  %6 = load i32, ptr %2, align 8, !tbaa !27
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %7, %5
  %9 = tail call fastcc ptr @alloc_obj(ptr noundef %0, i64 noundef %8, ptr noundef nonnull %2, i32 noundef 0)
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define internal ptr @i_alloc_struct_array_immovable(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3) #1 {
  %5 = zext i32 %1 to i64
  %6 = load i32, ptr %2, align 8, !tbaa !27
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %7, %5
  %9 = add nuw i64 %8, 7
  %10 = and i64 %9, -8
  %11 = add nuw i64 %10, 40
  %12 = tail call fastcc ptr @alloc_add_chunk(ptr noundef %0, i64 noundef %11, i32 noundef 0, ptr noundef nonnull @.str.6)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.chunk_s, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !26
  %17 = getelementptr i8, ptr %16, i64 %10
  %18 = getelementptr i8, ptr %17, i64 16
  store ptr %18, ptr %15, align 8, !tbaa !26
  %19 = load i8, ptr %16, align 8
  %20 = or i8 %19, 1
  store i8 %20, ptr %16, align 8
  %21 = load i32, ptr %16, align 8
  %22 = lshr i64 %8, 29
  %23 = trunc i64 %22 to i32
  %24 = and i32 %23, -8
  %25 = and i32 %21, 7
  %26 = or disjoint i32 %25, %24
  store i32 %26, ptr %16, align 8
  %27 = trunc i64 %8 to i32
  %28 = getelementptr inbounds %struct.obj_header_data_s, ptr %16, i64 0, i32 1
  store i32 %27, ptr %28, align 4, !tbaa !22
  br label %29

29:                                               ; preds = %14, %4
  %30 = phi ptr [ %16, %14 ], [ undef, %4 ]
  br i1 %13, label %34, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.obj_header_data_s, ptr %30, i64 0, i32 2
  store ptr %2, ptr %32, align 8, !tbaa !22
  %33 = getelementptr inbounds %struct.obj_header_s, ptr %30, i64 1
  br label %34

34:                                               ; preds = %29, %31
  %35 = phi ptr [ %33, %31 ], [ null, %29 ]
  ret ptr %35
}

; Function Attrs: nounwind uwtable
define internal ptr @i_resize_object(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  %5 = getelementptr inbounds %struct.obj_header_s, ptr %1, i64 -1
  %6 = getelementptr %struct.obj_header_s, ptr %1, i64 -1, i32 0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = load i8, ptr %5, align 8
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %5, align 8
  %13 = lshr i32 %12, 3
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 32
  %16 = getelementptr %struct.obj_header_s, ptr %1, i64 -1, i32 0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !22
  %18 = zext i32 %17 to i64
  %19 = or disjoint i64 %15, %18
  br label %24

20:                                               ; preds = %4
  %21 = getelementptr %struct.obj_header_s, ptr %1, i64 -1, i32 0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !22
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %20, %11
  %25 = phi i64 [ %19, %11 ], [ %23, %20 ]
  %26 = load i32, ptr %7, align 8, !tbaa !27
  %27 = zext i32 %26 to i64
  %28 = zext i32 %2 to i64
  %29 = mul nuw i64 %27, %28
  %30 = add nuw nsw i64 %25, 7
  %31 = and i64 %30, 4294967288
  %32 = getelementptr inbounds i8, ptr %1, i64 %31
  %33 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !24
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %24
  %37 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !23
  %39 = ptrtoint ptr %38 to i64
  %40 = ptrtoint ptr %34 to i64
  %41 = sub i64 %39, %40
  %42 = add nuw i64 %29, 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = add nuw i64 %29, 7
  %46 = and i64 %45, 4294967288
  %47 = getelementptr inbounds i8, ptr %1, i64 %46
  store ptr %47, ptr %33, align 8, !tbaa !24
  %48 = trunc i64 %29 to i32
  %49 = getelementptr %struct.obj_header_s, ptr %1, i64 -1, i32 0, i32 0, i32 1
  store i32 %48, ptr %49, align 4, !tbaa !22
  br label %59

50:                                               ; preds = %36, %24
  %51 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 6
  %52 = load ptr, ptr %51, align 8, !tbaa !29
  %53 = tail call ptr %52(ptr noundef %0, i32 noundef %2, ptr noundef nonnull %7, ptr noundef %3) #12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = tail call i64 @llvm.umin.i64(i64 %25, i64 %29)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %53, ptr align 1 %1, i64 %56, i1 false)
  %57 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %58 = load ptr, ptr %57, align 8, !tbaa !31
  tail call void %58(ptr noundef %0, ptr noundef %1, ptr noundef %3) #12
  br label %59

59:                                               ; preds = %50, %55, %44
  %60 = phi ptr [ %1, %44 ], [ %53, %55 ], [ null, %50 ]
  ret ptr %60
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @i_object_size(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr %struct.obj_header_s, ptr %1, i64 -1, i32 0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !22
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal ptr @i_object_type(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr %struct.obj_header_s, ptr %1, i64 -1, i32 0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal void @i_free_object(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #1 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %173, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.obj_header_s, ptr %1, i64 -1
  %7 = getelementptr %struct.obj_header_s, ptr %1, i64 -1, i32 0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !22
  %9 = getelementptr %struct.obj_header_s, ptr %1, i64 -1, i32 0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.gs_memory_struct_type_s, ptr %10, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !32
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  tail call void %12(ptr noundef nonnull %1) #12
  br label %15

15:                                               ; preds = %14, %5
  %16 = add i32 %8, 7
  %17 = and i32 %16, -8
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !24
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store ptr %6, ptr %20, align 8, !tbaa !24
  br label %173

24:                                               ; preds = %15
  %25 = load i8, ptr %6, align 8
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %79, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !33
  %31 = icmp eq ptr %30, null
  br i1 %31, label %75, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.chunk_s, ptr %30, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp ugt ptr %34, %1
  br i1 %35, label %36, label %49

36:                                               ; preds = %32, %41
  %37 = phi ptr [ %39, %41 ], [ %30, %32 ]
  %38 = getelementptr inbounds %struct.chunk_s, ptr %37, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  %40 = icmp eq ptr %39, null
  br i1 %40, label %75, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.chunk_s, ptr %39, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !34
  %44 = icmp ugt ptr %43, %1
  br i1 %44, label %36, label %45, !llvm.loop !36

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.chunk_s, ptr %39, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !38
  %48 = icmp ugt ptr %47, %1
  br i1 %48, label %62, label %75

49:                                               ; preds = %32, %54
  %50 = phi ptr [ %56, %54 ], [ %30, %32 ]
  %51 = getelementptr inbounds %struct.chunk_s, ptr %50, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !38
  %53 = icmp ugt ptr %52, %1
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.chunk_s, ptr %50, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !39
  %57 = icmp eq ptr %56, null
  br i1 %57, label %75, label %49, !llvm.loop !40

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct.chunk_s, ptr %50, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !34
  %61 = icmp ugt ptr %60, %1
  br i1 %61, label %75, label %62

62:                                               ; preds = %58, %45
  %63 = phi ptr [ %39, %45 ], [ %50, %58 ]
  %64 = getelementptr inbounds %struct.chunk_s, ptr %63, i64 0, i32 11
  %65 = load i32, ptr %64, align 8, !tbaa !41
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.chunk_s, ptr %63, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !26
  %70 = icmp ugt ptr %69, %1
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.chunk_s, ptr %63, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !42
  %74 = icmp ugt ptr %73, %1
  br label %75

75:                                               ; preds = %54, %36, %28, %45, %58, %62, %67, %71
  %76 = phi ptr [ null, %28 ], [ %63, %62 ], [ %63, %67 ], [ %63, %71 ], [ null, %45 ], [ null, %58 ], [ null, %36 ], [ null, %54 ]
  %77 = phi i1 [ true, %28 ], [ false, %62 ], [ false, %67 ], [ %74, %71 ], [ true, %45 ], [ true, %58 ], [ true, %36 ], [ true, %54 ]
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  tail call void @alloc_free_chunk(ptr noundef %76, ptr noundef %0)
  br label %173

79:                                               ; preds = %75, %24
  %80 = icmp ugt i32 %8, 800
  %81 = icmp eq i32 %17, 0
  %82 = or i1 %80, %81
  br i1 %82, label %165, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 12
  store ptr %0, ptr %84, align 8, !tbaa !43
  %85 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 12, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !44
  %87 = icmp eq ptr %86, null
  br i1 %87, label %108, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.chunk_s, ptr %86, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !34
  %91 = icmp ugt ptr %90, %1
  br i1 %91, label %108, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.chunk_s, ptr %86, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !38
  %95 = icmp ugt ptr %94, %1
  br i1 %95, label %96, label %108

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.chunk_s, ptr %86, i64 0, i32 11
  %98 = load i32, ptr %97, align 8, !tbaa !41
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %160, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.chunk_s, ptr %86, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !26
  %103 = icmp ugt ptr %102, %1
  br i1 %103, label %160, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.chunk_s, ptr %86, i64 0, i32 5
  %106 = load ptr, ptr %105, align 8, !tbaa !42
  %107 = icmp ugt ptr %106, %1
  br i1 %107, label %108, label %160

108:                                              ; preds = %104, %92, %88, %83
  %109 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 12, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !45
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 8
  %114 = load ptr, ptr %113, align 8, !tbaa !33
  %115 = icmp eq ptr %114, null
  br i1 %115, label %166, label %116

116:                                              ; preds = %112, %108
  %117 = phi ptr [ %114, %112 ], [ %110, %108 ]
  %118 = getelementptr inbounds %struct.chunk_s, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !34
  %120 = icmp ugt ptr %119, %1
  br i1 %120, label %121, label %134

121:                                              ; preds = %116, %126
  %122 = phi ptr [ %124, %126 ], [ %117, %116 ]
  %123 = getelementptr inbounds %struct.chunk_s, ptr %122, i64 0, i32 8
  %124 = load ptr, ptr %123, align 8, !tbaa !35
  %125 = icmp eq ptr %124, null
  br i1 %125, label %166, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.chunk_s, ptr %124, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !34
  %129 = icmp ugt ptr %128, %1
  br i1 %129, label %121, label %130, !llvm.loop !36

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.chunk_s, ptr %124, i64 0, i32 7
  %132 = load ptr, ptr %131, align 8, !tbaa !38
  %133 = icmp ugt ptr %132, %1
  br i1 %133, label %147, label %166

134:                                              ; preds = %116, %139
  %135 = phi ptr [ %141, %139 ], [ %117, %116 ]
  %136 = getelementptr inbounds %struct.chunk_s, ptr %135, i64 0, i32 7
  %137 = load ptr, ptr %136, align 8, !tbaa !38
  %138 = icmp ugt ptr %137, %1
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.chunk_s, ptr %135, i64 0, i32 9
  %141 = load ptr, ptr %140, align 8, !tbaa !39
  %142 = icmp eq ptr %141, null
  br i1 %142, label %166, label %134, !llvm.loop !40

143:                                              ; preds = %134
  %144 = getelementptr inbounds %struct.chunk_s, ptr %135, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !34
  %146 = icmp ugt ptr %145, %1
  br i1 %146, label %166, label %147

147:                                              ; preds = %143, %130
  %148 = phi ptr [ %124, %130 ], [ %135, %143 ]
  store ptr %148, ptr %109, align 8, !tbaa !45
  %149 = getelementptr inbounds %struct.chunk_s, ptr %148, i64 0, i32 11
  %150 = load i32, ptr %149, align 8, !tbaa !41
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.chunk_s, ptr %148, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !26
  %155 = icmp ugt ptr %154, %1
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.chunk_s, ptr %148, i64 0, i32 5
  %158 = load ptr, ptr %157, align 8, !tbaa !42
  %159 = icmp ugt ptr %158, %1
  br i1 %159, label %166, label %160

160:                                              ; preds = %147, %152, %156, %104, %100, %96
  %161 = lshr i32 %16, 3
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 23, i64 %162
  store ptr @st_free, ptr %9, align 8, !tbaa !22
  %164 = load ptr, ptr %163, align 8, !tbaa !5
  store ptr %164, ptr %1, align 8, !tbaa !5
  store ptr %1, ptr %163, align 8, !tbaa !5
  br label %173

165:                                              ; preds = %79
  store ptr @st_free, ptr %9, align 8, !tbaa !22
  br label %166

166:                                              ; preds = %139, %121, %112, %130, %143, %165, %156
  %167 = add i32 %8, 23
  %168 = and i32 %167, -8
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 16
  %171 = load i64, ptr %170, align 8, !tbaa !46
  %172 = add i64 %171, %169
  store i64 %172, ptr %170, align 8, !tbaa !46
  br label %173

173:                                              ; preds = %78, %3, %166, %160, %23
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @i_alloc_string(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2) #1 {
  %4 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10
  %5 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 5
  %6 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 2
  %7 = zext i32 %1 to i64
  %8 = load ptr, ptr %5, align 8, !tbaa !23
  %9 = load ptr, ptr %6, align 8, !tbaa !24
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = icmp sgt i64 %12, %7
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = icmp ugt i32 %1, -678152768
  %16 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 3
  %17 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 11
  br i1 %15, label %57, label %24

19:                                               ; preds = %50, %3
  %20 = phi ptr [ %8, %3 ], [ %51, %50 ]
  %21 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 5
  %22 = sub nsw i64 0, %7
  %23 = getelementptr inbounds i8, ptr %20, i64 %22
  store ptr %23, ptr %21, align 8, !tbaa !23
  br label %57

24:                                               ; preds = %14, %50
  %25 = load i32, ptr %16, align 4, !tbaa !25
  %26 = icmp ugt i32 %25, %1
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = add i32 %1, 63
  %29 = lshr i32 %28, 6
  %30 = mul i32 %29, 76
  %31 = add i32 %30, 24
  %32 = zext i32 %31 to i64
  %33 = tail call fastcc ptr @alloc_add_chunk(ptr noundef %0, i64 noundef %32, i32 noundef 1, ptr noundef nonnull @.str.8)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %57, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.chunk_s, ptr %33, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !47
  %38 = sub nsw i64 0, %7
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  %40 = getelementptr inbounds %struct.chunk_s, ptr %33, i64 0, i32 5
  store ptr %39, ptr %40, align 8, !tbaa !42
  br label %57

41:                                               ; preds = %24
  %42 = load i32, ptr %17, align 8, !tbaa !48
  %43 = zext i32 %42 to i64
  %44 = tail call fastcc ptr @alloc_add_chunk(ptr noundef %0, i64 noundef %43, i32 noundef 1, ptr noundef nonnull @.str.7)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %57, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %18, align 8, !tbaa !49
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %47, ptr noundef nonnull align 8 dereferenceable(176) %4, i64 176, i1 false), !tbaa.struct !50
  br label %50

50:                                               ; preds = %46, %49
  store ptr %44, ptr %18, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %4, ptr noundef nonnull align 8 dereferenceable(176) %44, i64 176, i1 false), !tbaa.struct !50
  %51 = load ptr, ptr %5, align 8, !tbaa !23
  %52 = load ptr, ptr %6, align 8, !tbaa !24
  %53 = ptrtoint ptr %51 to i64
  %54 = ptrtoint ptr %52 to i64
  %55 = sub i64 %53, %54
  %56 = icmp sgt i64 %55, %7
  br i1 %56, label %19, label %24

57:                                               ; preds = %41, %14, %35, %27, %19
  %58 = phi ptr [ %23, %19 ], [ %39, %35 ], [ null, %27 ], [ null, %14 ], [ null, %41 ]
  ret ptr %58
}

; Function Attrs: nounwind uwtable
define internal ptr @i_alloc_string_immovable(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture readnone %2) #1 {
  %4 = add i32 %1, 63
  %5 = lshr i32 %4, 6
  %6 = mul i32 %5, 76
  %7 = add i32 %6, 24
  %8 = zext i32 %7 to i64
  %9 = tail call fastcc ptr @alloc_add_chunk(ptr noundef %0, i64 noundef %8, i32 noundef 1, ptr noundef nonnull @.str.8)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = zext i32 %1 to i64
  %15 = sub nsw i64 0, %14
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  %17 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 5
  store ptr %16, ptr %17, align 8, !tbaa !42
  br label %18

18:                                               ; preds = %3, %11
  %19 = phi ptr [ %16, %11 ], [ null, %3 ]
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define internal ptr @i_resize_string(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) #1 {
  %6 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !23
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = icmp ult i32 %3, %2
  br i1 %10, label %20, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !24
  %14 = ptrtoint ptr %7 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = sub i32 %3, %2
  %18 = zext i32 %17 to i64
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %11, %9
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds i8, ptr %1, i64 %21
  %23 = zext i32 %3 to i64
  %24 = sub nsw i64 0, %23
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  store ptr %25, ptr %6, align 8, !tbaa !23
  %26 = tail call i32 @llvm.umin.i32(i32 %2, i32 %3)
  %27 = zext i32 %26 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %25, ptr align 1 %1, i64 %27, i1 false)
  br label %38

28:                                               ; preds = %11, %5
  %29 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 12
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  %31 = tail call ptr %30(ptr noundef %0, i32 noundef %3, ptr noundef %4) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = tail call i32 @llvm.umin.i32(i32 %2, i32 %3)
  %35 = zext i32 %34 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr align 1 %1, i64 %35, i1 false)
  %36 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 15
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  tail call void %37(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  br label %38

38:                                               ; preds = %20, %33, %28
  %39 = phi ptr [ null, %28 ], [ %25, %20 ], [ %31, %33 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @i_free_string(ptr nocapture noundef %0, ptr noundef readnone %1, i32 noundef %2, ptr nocapture readnone %3) #0 {
  %5 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !23
  %7 = icmp eq ptr %6, %1
  %8 = zext i32 %2 to i64
  br i1 %7, label %9, label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %6, i64 %8
  store ptr %10, ptr %5, align 8, !tbaa !23
  br label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 16, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !55
  %14 = add i64 %13, %8
  store i64 %14, ptr %12, align 8, !tbaa !55
  br label %15

15:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @i_register_root(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture readnone %4) #0 {
  %6 = getelementptr inbounds %struct.gs_gc_root_s, ptr %1, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.gs_gc_root_s, ptr %1, i64 0, i32 2
  store ptr %3, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  store ptr %9, ptr %1, align 8, !tbaa !60
  store ptr %1, ptr %8, align 8, !tbaa !59
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @i_unregister_root(ptr nocapture noundef %0, ptr noundef readnone %1, ptr nocapture readnone %2) #3 {
  %4 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 17
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi ptr [ %4, %3 ], [ %7, %5 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %9, label %5, !llvm.loop !61

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !60
  store ptr %10, ptr %6, align 8, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @i_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 16, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !62
  %5 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 16, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !55
  %7 = add i64 %6, %4
  %8 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %9, ptr noundef nonnull align 8 dereferenceable(176) %12, i64 176, i1 false), !tbaa.struct !50
  br label %13

13:                                               ; preds = %2, %11
  %14 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %45, label %17

17:                                               ; preds = %13, %40
  %18 = phi ptr [ %43, %40 ], [ %15, %13 ]
  %19 = phi i64 [ %41, %40 ], [ 0, %13 ]
  %20 = phi i64 [ %28, %40 ], [ %7, %13 ]
  %21 = getelementptr inbounds %struct.chunk_s, ptr %18, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct.chunk_s, ptr %18, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !26
  %25 = ptrtoint ptr %22 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = add i64 %20, %25
  %28 = sub i64 %27, %26
  %29 = getelementptr inbounds %struct.chunk_s, ptr %18, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %17
  %33 = getelementptr inbounds %struct.chunk_s, ptr %18, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = load ptr, ptr %18, align 8, !tbaa !64
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = add i64 %19, %36
  %39 = sub i64 %38, %37
  br label %40

40:                                               ; preds = %32, %17
  %41 = phi i64 [ %39, %32 ], [ %19, %17 ]
  %42 = getelementptr inbounds %struct.chunk_s, ptr %18, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %17, !llvm.loop !65

45:                                               ; preds = %40, %13
  %46 = phi i64 [ %7, %13 ], [ %28, %40 ]
  %47 = phi i64 [ 0, %13 ], [ %41, %40 ]
  %48 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 16
  %49 = load i64, ptr %48, align 8, !tbaa !46
  br label %50

50:                                               ; preds = %62, %45
  %51 = phi i64 [ 0, %45 ], [ %63, %62 ]
  %52 = phi i64 [ %49, %45 ], [ %57, %62 ]
  %53 = shl nuw nsw i64 %51, 3
  %54 = add nuw nsw i64 %53, 16
  %55 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 23, i64 %51
  br label %56

56:                                               ; preds = %56, %50
  %57 = phi i64 [ %52, %50 ], [ %61, %56 ]
  %58 = phi ptr [ %55, %50 ], [ %59, %56 ]
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = icmp eq ptr %59, null
  %61 = add i64 %54, %57
  br i1 %60, label %62, label %56, !llvm.loop !66

62:                                               ; preds = %56
  %63 = add nuw nsw i64 %51, 1
  %64 = icmp eq i64 %63, 101
  br i1 %64, label %65, label %50, !llvm.loop !67

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 13
  %67 = load i64, ptr %66, align 8, !tbaa !68
  %68 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 22
  %69 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 22, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !69
  %71 = add i64 %46, %57
  %72 = sub i64 %47, %71
  %73 = add i64 %72, %67
  %74 = add i64 %73, %70
  %75 = getelementptr inbounds %struct.gs_memory_status_s, ptr %1, i64 0, i32 1
  store i64 %74, ptr %75, align 8, !tbaa !70
  %76 = load i64, ptr %68, align 8, !tbaa !71
  %77 = add i64 %76, %67
  store i64 %77, ptr %1, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @i_enable_free(ptr nocapture noundef writeonly %0, i32 noundef %1) #4 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 11
  %5 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 15
  %6 = select i1 %3, ptr @gs_ignore_free_object, ptr @i_free_object
  %7 = select i1 %3, ptr @gs_ignore_free_string, ptr @i_free_string
  store ptr %6, ptr %4, align 8, !tbaa !31
  store ptr %7, ptr %5, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @ialloc_alloc_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = tail call ptr %4(ptr noundef %0, ptr noundef nonnull @st_chunk, ptr noundef nonnull @.str.4) #12
  %6 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = tail call ptr %7(ptr noundef %0, i32 noundef 1408, ptr noundef nonnull @.str.5) #12
  %9 = icmp eq ptr %5, null
  %10 = icmp eq ptr %8, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %34, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds i8, ptr %8, i64 24
  %14 = getelementptr inbounds i8, ptr %8, i64 1408
  store ptr %8, ptr %5, align 8, !tbaa !64
  %15 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 2
  store ptr %13, ptr %16, align 8, !tbaa !26
  %17 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 7
  store ptr %14, ptr %17, align 8, !tbaa !38
  %18 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 3
  %19 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %20 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store ptr %13, ptr %20, align 8, !tbaa !75
  %21 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 6
  store ptr %14, ptr %21, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 13
  store ptr null, ptr %22, align 8, !tbaa !76
  %23 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 16
  store ptr null, ptr %23, align 8, !tbaa !77
  %24 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 17
  store i32 0, ptr %24, align 8, !tbaa !78
  %25 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 19
  store ptr null, ptr %25, align 8, !tbaa !79
  %26 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 5
  store ptr %14, ptr %26, align 8, !tbaa !42
  %27 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 14
  store i16 0, ptr %27, align 8, !tbaa !80
  store ptr %14, ptr %16, align 8, !tbaa !26
  %28 = getelementptr inbounds %struct.chunk_s, ptr %5, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %28, i8 0, i64 16, i1 false)
  %29 = load i8, ptr %13, align 8
  %30 = and i8 %29, -2
  store i8 %30, ptr %13, align 8
  %31 = getelementptr inbounds i8, ptr %8, i64 28
  store i32 1368, ptr %31, align 4, !tbaa !22
  %32 = getelementptr inbounds i8, ptr %8, i64 32
  store ptr @st_ref_memory, ptr %32, align 8, !tbaa !22
  %33 = getelementptr inbounds i8, ptr %8, i64 40
  br label %34

34:                                               ; preds = %2, %12
  %35 = phi ptr [ %33, %12 ], [ null, %2 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %65, label %37

37:                                               ; preds = %34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %35, ptr noundef nonnull align 8 dereferenceable(160) @gs_ref_memory_procs, i64 160, i1 false), !tbaa.struct !81
  %38 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 1
  store ptr %0, ptr %38, align 8, !tbaa !82
  %39 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 2
  store i32 %1, ptr %39, align 8, !tbaa !48
  %40 = lshr i32 %1, 2
  %41 = and i32 %40, 1073741816
  %42 = or disjoint i32 %41, 1
  %43 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 3
  store i32 %42, ptr %43, align 4, !tbaa !25
  %44 = zext i32 %1 to i64
  %45 = mul nuw nsw i64 %44, 3
  %46 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 6
  store i64 %45, ptr %46, align 8, !tbaa !83
  %47 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 6, i32 1
  store i64 9223372036854775807, ptr %47, align 8, !tbaa !84
  %48 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 6, i32 2
  store ptr null, ptr %48, align 8, !tbaa !85
  %49 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 6, i32 4
  store i32 0, ptr %49, align 4, !tbaa !86
  %50 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 22
  %51 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 8
  %52 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 10, i32 3
  %53 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 10, i32 12
  store i32 0, ptr %53, align 4, !tbaa !87
  %54 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 19
  store ptr null, ptr %54, align 8, !tbaa !9
  %55 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 16
  %56 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 12, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %55, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %52, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  %57 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(824) %50, i8 0, i64 824, i1 false)
  store ptr %5, ptr %57, align 8, !tbaa !88
  store ptr %5, ptr %51, align 8, !tbaa !33
  %58 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 7
  store i64 9223372036854775807, ptr %58, align 8, !tbaa !89
  %59 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 10, i32 5
  store ptr null, ptr %59, align 8, !tbaa !23
  %60 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 10, i32 2
  store ptr null, ptr %60, align 8, !tbaa !24
  %61 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 11
  store ptr null, ptr %61, align 8, !tbaa !49
  %62 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 17
  store ptr null, ptr %62, align 8, !tbaa !59
  %63 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 18
  store i32 1, ptr %63, align 8, !tbaa !90
  %64 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %35, i64 0, i32 20
  store ptr null, ptr %64, align 8, !tbaa !20
  br label %65

65:                                               ; preds = %34, %37
  %66 = phi ptr [ %35, %37 ], [ null, %34 ]
  ret ptr %66
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ialloc_reset(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 8
  %3 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 3
  %4 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 12
  store i32 0, ptr %4, align 4, !tbaa !87
  %5 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 19
  store ptr null, ptr %5, align 8, !tbaa !9
  %6 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 16
  %7 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 12, i32 1
  %8 = getelementptr %struct.gs_ref_memory_s, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(808) %8, i8 0, i64 808, i1 false), !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @ialloc_set_limit(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 6, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !84
  %4 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 22
  %5 = load i64, ptr %4, align 8, !tbaa !71
  %6 = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %5)
  %7 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 6, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !86
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 6
  %12 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 15
  %13 = load i64, ptr %12, align 8, !tbaa !91
  %14 = load i64, ptr %11, align 8, !tbaa !83
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %5
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = sub i64 %15, %5
  %19 = tail call i64 @llvm.umin.i64(i64 %18, i64 %6)
  br label %20

20:                                               ; preds = %1, %10, %17
  %21 = phi i64 [ %19, %17 ], [ 0, %10 ], [ %6, %1 ]
  %22 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 7
  store i64 %21, ptr %22, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ialloc_reset_free(ptr nocapture noundef writeonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 16
  %3 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 12, i32 1
  store ptr null, ptr %3, align 8, !tbaa !44
  %4 = getelementptr %struct.gs_ref_memory_s, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(808) %4, i8 0, i64 808, i1 false), !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gs_memory_gc_status(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !92
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @gs_memory_set_gc_status(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !92
  %4 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 6, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !84
  %6 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 22
  %7 = load i64, ptr %6, align 8, !tbaa !71
  %8 = tail call i64 @llvm.usub.sat.i64(i64 %5, i64 %7)
  %9 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 6, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !86
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 15
  %14 = load i64, ptr %13, align 8, !tbaa !91
  %15 = load i64, ptr %3, align 8, !tbaa !83
  %16 = add i64 %15, %14
  %17 = icmp ult i64 %16, %7
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = sub i64 %16, %7
  %20 = tail call i64 @llvm.umin.i64(i64 %19, i64 %8)
  br label %21

21:                                               ; preds = %2, %12, %18
  %22 = phi i64 [ %20, %18 ], [ 0, %12 ], [ %8, %2 ]
  %23 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 7
  store i64 %22, ptr %23, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @chunk_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  switch i32 %2, label %12 [
    i32 0, label %5
    i32 1, label %7
  ]

5:                                                ; preds = %4
  %6 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 8
  br label %9

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 9
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  store ptr %11, ptr %3, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %9, %4
  %13 = phi ptr [ null, %4 ], [ @ptr_struct_procs, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal void @chunk_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #12
  store ptr %6, ptr %4, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %8, ptr noundef %2) #12
  store ptr %9, ptr %7, align 8, !tbaa !39
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @alloc_link_chunk(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !34
  %5 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.chunk_s, ptr %6, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp ult ptr %4, %10
  br i1 %11, label %21, label %16

12:                                               ; preds = %16
  %13 = getelementptr inbounds %struct.chunk_s, ptr %19, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !42
  %15 = icmp ult ptr %4, %14
  br i1 %15, label %21, label %16, !llvm.loop !94

16:                                               ; preds = %8, %12
  %17 = phi ptr [ %19, %12 ], [ %6, %8 ]
  %18 = getelementptr inbounds %struct.chunk_s, ptr %17, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %12, !llvm.loop !94

21:                                               ; preds = %12, %8
  %22 = phi i1 [ %7, %8 ], [ %20, %12 ]
  %23 = phi ptr [ %6, %8 ], [ %19, %12 ]
  %24 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 9
  store ptr %23, ptr %24, align 8, !tbaa !39
  br i1 %22, label %28, label %30

25:                                               ; preds = %16, %2
  %26 = phi ptr [ %6, %2 ], [ %19, %16 ]
  %27 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 9
  store ptr %26, ptr %27, align 8, !tbaa !39
  br label %28

28:                                               ; preds = %25, %21
  %29 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 9
  br label %32

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.chunk_s, ptr %23, i64 0, i32 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi ptr [ %31, %30 ], [ %29, %28 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  store ptr %0, ptr %33, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 8
  store ptr %34, ptr %35, align 8, !tbaa !35
  %36 = icmp eq ptr %34, null
  %37 = getelementptr inbounds %struct.chunk_s, ptr %34, i64 0, i32 9
  %38 = select i1 %36, ptr %5, ptr %37
  store ptr %0, ptr %38, align 8, !tbaa !5
  %39 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.chunk_s, ptr %40, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !39
  %45 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 10, i32 9
  store ptr %44, ptr %45, align 8, !tbaa !95
  %46 = getelementptr inbounds %struct.chunk_s, ptr %40, i64 0, i32 8
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 10, i32 8
  store ptr %47, ptr %48, align 8, !tbaa !96
  br label %49

49:                                               ; preds = %42, %32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @alloc_init_chunk(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #6 {
  %6 = icmp eq ptr %4, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.chunk_s, ptr %4, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !41
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !41
  br label %11

11:                                               ; preds = %7, %5
  store ptr %1, ptr %0, align 8, !tbaa !64
  %12 = getelementptr inbounds i8, ptr %1, i64 24
  %13 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 2
  store ptr %12, ptr %14, align 8, !tbaa !26
  %15 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 7
  store ptr %2, ptr %15, align 8, !tbaa !38
  %16 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 3
  %17 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  store ptr %4, ptr %17, align 8, !tbaa !63
  %18 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 11
  store i32 0, ptr %18, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 12
  store i32 0, ptr %19, align 4, !tbaa !97
  %20 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 18
  store ptr %12, ptr %20, align 8, !tbaa !75
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %11
  %23 = ptrtoint ptr %2 to i64
  %24 = ptrtoint ptr %12 to i64
  %25 = sub i64 %23, %24
  %26 = icmp ugt i64 %25, 82
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = udiv i64 %25, 76
  %29 = trunc i64 %28 to i32
  %30 = shl nuw i64 %28, 6
  %31 = and i64 %30, 4294967232
  %32 = getelementptr inbounds i8, ptr %12, i64 %31
  %33 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 6
  store ptr %32, ptr %33, align 8, !tbaa !47
  %34 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 16
  store ptr %32, ptr %34, align 8, !tbaa !77
  %35 = shl i32 %29, 3
  %36 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 17
  store i32 %35, ptr %36, align 8, !tbaa !78
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds i8, ptr %32, i64 %37
  %39 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 19
  store ptr %38, ptr %39, align 8, !tbaa !79
  %40 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 13
  store ptr %38, ptr %40, align 8, !tbaa !76
  br label %47

41:                                               ; preds = %22, %11
  %42 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 6
  store ptr %2, ptr %42, align 8, !tbaa !47
  %43 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 13
  store ptr null, ptr %43, align 8, !tbaa !76
  %44 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 16
  store ptr null, ptr %44, align 8, !tbaa !77
  %45 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 17
  store i32 0, ptr %45, align 8, !tbaa !78
  %46 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 19
  store ptr null, ptr %46, align 8, !tbaa !79
  br label %47

47:                                               ; preds = %41, %27
  %48 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !47
  %50 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 5
  store ptr %49, ptr %50, align 8, !tbaa !42
  %51 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 13
  %52 = load ptr, ptr %51, align 8, !tbaa !76
  %53 = icmp eq ptr %52, null
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = ptrtoint ptr %49 to i64
  %56 = ptrtoint ptr %1 to i64
  %57 = sub i64 %55, %56
  %58 = add i64 %57, 255
  %59 = ashr i64 %58, 7
  %60 = and i64 %59, -2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %52, i8 0, i64 %60, i1 false)
  br label %61

61:                                               ; preds = %47, %54
  %62 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 14
  store i16 0, ptr %62, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @alloc_init_free_strings(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = load ptr, ptr %0, align 8, !tbaa !64
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = add i64 %9, 255
  %12 = sub i64 %11, %10
  %13 = ashr i64 %12, 7
  %14 = and i64 %13, -2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %3, i8 0, i64 %14, i1 false)
  br label %15

15:                                               ; preds = %5, %1
  %16 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 14
  store i16 0, ptr %16, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @alloc_close_chunk(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %3, ptr noundef nonnull align 8 dereferenceable(176) %6, i64 176, i1 false), !tbaa.struct !50
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @alloc_open_chunk(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %6, ptr noundef nonnull align 8 dereferenceable(176) %3, i64 176, i1 false), !tbaa.struct !50
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @alloc_unlink_chunk(ptr noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !39
  %8 = getelementptr inbounds %struct.chunk_s, ptr %4, i64 0, i32 9
  %9 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 8
  %10 = select i1 %5, ptr %9, ptr %8
  store ptr %7, ptr %10, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds %struct.chunk_s, ptr %12, i64 0, i32 8
  %15 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 9
  %16 = select i1 %13, ptr %15, ptr %14
  store ptr %4, ptr %16, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.chunk_s, ptr %18, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  %23 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 10, i32 9
  store ptr %22, ptr %23, align 8, !tbaa !95
  %24 = getelementptr inbounds %struct.chunk_s, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 10, i32 8
  store ptr %25, ptr %26, align 8, !tbaa !96
  %27 = icmp eq ptr %18, %0
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  store ptr null, ptr %17, align 8, !tbaa !49
  %29 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 10, i32 5
  store ptr null, ptr %29, align 8, !tbaa !23
  %30 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 10, i32 2
  store ptr null, ptr %30, align 8, !tbaa !24
  br label %31

31:                                               ; preds = %20, %28, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @alloc_free_chunk(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.chunk_s, ptr %6, i64 0, i32 9
  %11 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 8
  %12 = select i1 %7, ptr %11, ptr %10
  store ptr %9, ptr %12, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.chunk_s, ptr %14, i64 0, i32 8
  %17 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 9
  %18 = select i1 %15, ptr %17, ptr %16
  store ptr %6, ptr %18, align 8, !tbaa !5
  %19 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.chunk_s, ptr %20, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 10, i32 9
  store ptr %24, ptr %25, align 8, !tbaa !95
  %26 = getelementptr inbounds %struct.chunk_s, ptr %20, i64 0, i32 8
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 10, i32 8
  store ptr %27, ptr %28, align 8, !tbaa !96
  %29 = icmp eq ptr %20, %0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  store ptr null, ptr %19, align 8, !tbaa !49
  %31 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 10, i32 5
  store ptr null, ptr %31, align 8, !tbaa !23
  %32 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 10, i32 2
  store ptr null, ptr %32, align 8, !tbaa !24
  br label %33

33:                                               ; preds = %2, %22, %30
  %34 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 12, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !44
  %36 = icmp eq ptr %35, %0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store ptr null, ptr %34, align 8, !tbaa !44
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %struct.chunk_s, ptr %0, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !63
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load ptr, ptr %0, align 8, !tbaa !64
  %44 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !98
  %46 = tail call i32 %45(ptr noundef %4, ptr noundef %43) #12
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 13
  %49 = load i64, ptr %48, align 8, !tbaa !68
  %50 = sub i64 %49, %47
  store i64 %50, ptr %48, align 8, !tbaa !68
  %51 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 11
  %52 = load ptr, ptr %51, align 8, !tbaa !31
  tail call void %52(ptr noundef %4, ptr noundef %43, ptr noundef nonnull @.str.2) #12
  br label %57

53:                                               ; preds = %38
  %54 = getelementptr inbounds %struct.chunk_s, ptr %40, i64 0, i32 11
  %55 = load i32, ptr %54, align 8, !tbaa !41
  %56 = add i32 %55, -1
  store i32 %56, ptr %54, align 8, !tbaa !41
  br label %57

57:                                               ; preds = %53, %42
  %58 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 9
  %59 = load ptr, ptr %58, align 8, !tbaa !98
  %60 = tail call i32 %59(ptr noundef %4, ptr noundef %0) #12
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %1, i64 0, i32 13
  %63 = load i64, ptr %62, align 8, !tbaa !68
  %64 = sub i64 %63, %61
  store i64 %64, ptr %62, align 8, !tbaa !68
  %65 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %4, i64 0, i32 11
  %66 = load ptr, ptr %65, align 8, !tbaa !31
  tail call void %66(ptr noundef %4, ptr noundef %0, ptr noundef nonnull @.str.3) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @chunk_locate_ptr(ptr noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.chunk_locator_s, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !99
  %8 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !33
  %10 = icmp eq ptr %9, null
  br i1 %10, label %56, label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %9, %6 ], [ %4, %2 ]
  %13 = getelementptr inbounds %struct.chunk_s, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !34
  %15 = icmp ugt ptr %14, %0
  br i1 %15, label %16, label %29

16:                                               ; preds = %11, %21
  %17 = phi ptr [ %19, %21 ], [ %12, %11 ]
  %18 = getelementptr inbounds %struct.chunk_s, ptr %17, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %56, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.chunk_s, ptr %19, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp ugt ptr %23, %0
  br i1 %24, label %16, label %25, !llvm.loop !36

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.chunk_s, ptr %19, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !38
  %28 = icmp ugt ptr %27, %0
  br i1 %28, label %42, label %56

29:                                               ; preds = %11, %34
  %30 = phi ptr [ %36, %34 ], [ %12, %11 ]
  %31 = getelementptr inbounds %struct.chunk_s, ptr %30, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !38
  %33 = icmp ugt ptr %32, %0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.chunk_s, ptr %30, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !39
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %29, !llvm.loop !40

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.chunk_s, ptr %30, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = icmp ugt ptr %40, %0
  br i1 %41, label %56, label %42

42:                                               ; preds = %38, %25
  %43 = phi ptr [ %19, %25 ], [ %30, %38 ]
  store ptr %43, ptr %3, align 8, !tbaa !45
  %44 = getelementptr inbounds %struct.chunk_s, ptr %43, i64 0, i32 11
  %45 = load i32, ptr %44, align 8, !tbaa !41
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.chunk_s, ptr %43, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !26
  %50 = icmp ugt ptr %49, %0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.chunk_s, ptr %43, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = icmp ule ptr %53, %0
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %34, %16, %42, %51, %47, %38, %25, %6
  %57 = phi i32 [ 0, %6 ], [ 0, %25 ], [ 0, %38 ], [ 1, %42 ], [ 1, %47 ], [ %55, %51 ], [ 0, %16 ], [ 0, %34 ]
  ret i32 %57
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc ptr @alloc_obj(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !25
  %7 = zext i32 %6 to i64
  %8 = icmp ule i64 %7, %1
  %9 = icmp ne i32 %3, 0
  %10 = or i1 %9, %8
  br i1 %10, label %11, label %34

11:                                               ; preds = %4
  %12 = add nuw i64 %1, 7
  %13 = and i64 %12, -8
  %14 = add nuw i64 %13, 40
  %15 = tail call fastcc ptr @alloc_add_chunk(ptr noundef %0, i64 noundef %14, i32 noundef 0, ptr noundef nonnull @.str.6)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.chunk_s, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !26
  %20 = getelementptr i8, ptr %19, i64 %13
  %21 = getelementptr i8, ptr %20, i64 16
  store ptr %21, ptr %18, align 8, !tbaa !26
  %22 = load i8, ptr %19, align 8
  %23 = or i8 %22, 1
  store i8 %23, ptr %19, align 8
  %24 = load i32, ptr %19, align 8
  %25 = lshr i64 %1, 29
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, -8
  %28 = and i32 %24, 7
  %29 = or disjoint i32 %28, %27
  store i32 %29, ptr %19, align 8
  %30 = trunc i64 %1 to i32
  %31 = getelementptr inbounds %struct.obj_header_data_s, ptr %19, i64 0, i32 1
  store i32 %30, ptr %31, align 4, !tbaa !22
  br label %32

32:                                               ; preds = %11, %17
  %33 = phi ptr [ %19, %17 ], [ undef, %11 ]
  br i1 %16, label %87, label %83

34:                                               ; preds = %4
  %35 = trunc i64 %1 to i32
  %36 = add i64 %1, 23
  %37 = and i64 %36, 4294967288
  %38 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10
  %39 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 5
  %40 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 2
  %41 = add nuw nsw i64 %37, 16
  %42 = load ptr, ptr %39, align 8, !tbaa !23
  %43 = load ptr, ptr %40, align 8, !tbaa !24
  %44 = ptrtoint ptr %42 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = icmp ugt i64 %46, %41
  br i1 %47, label %72, label %48

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 2
  %50 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 11
  %51 = load i32, ptr %49, align 8, !tbaa !48
  %52 = zext i32 %51 to i64
  %53 = tail call fastcc ptr @alloc_add_chunk(ptr noundef %0, i64 noundef %52, i32 noundef 1, ptr noundef nonnull @.str.7)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %80, label %60

55:                                               ; preds = %65
  %56 = load i32, ptr %49, align 8, !tbaa !48
  %57 = zext i32 %56 to i64
  %58 = tail call fastcc ptr @alloc_add_chunk(ptr noundef %0, i64 noundef %57, i32 noundef 1, ptr noundef nonnull @.str.7)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %80, label %60, !llvm.loop !100

60:                                               ; preds = %48, %55
  %61 = phi ptr [ %58, %55 ], [ %53, %48 ]
  %62 = load ptr, ptr %50, align 8, !tbaa !49
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %62, ptr noundef nonnull align 8 dereferenceable(176) %38, i64 176, i1 false), !tbaa.struct !50
  br label %65

65:                                               ; preds = %60, %64
  store ptr %61, ptr %50, align 8, !tbaa !49
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %38, ptr noundef nonnull align 8 dereferenceable(176) %61, i64 176, i1 false), !tbaa.struct !50
  %66 = load ptr, ptr %39, align 8, !tbaa !23
  %67 = load ptr, ptr %40, align 8, !tbaa !24
  %68 = ptrtoint ptr %66 to i64
  %69 = ptrtoint ptr %67 to i64
  %70 = sub i64 %68, %69
  %71 = icmp ugt i64 %70, %41
  br i1 %71, label %72, label %55, !llvm.loop !100

72:                                               ; preds = %65, %34
  %73 = phi ptr [ %43, %34 ], [ %67, %65 ]
  %74 = phi i1 [ %47, %34 ], [ %71, %65 ]
  %75 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 2
  %76 = getelementptr inbounds i8, ptr %73, i64 %37
  store ptr %76, ptr %75, align 8, !tbaa !24
  %77 = load i8, ptr %73, align 8
  %78 = and i8 %77, -2
  store i8 %78, ptr %73, align 8
  %79 = getelementptr inbounds %struct.obj_header_data_s, ptr %73, i64 0, i32 1
  store i32 %35, ptr %79, align 4, !tbaa !22
  br label %80

80:                                               ; preds = %55, %48, %72
  %81 = phi ptr [ %73, %72 ], [ %43, %48 ], [ %67, %55 ]
  %82 = phi i1 [ %74, %72 ], [ %47, %48 ], [ %71, %55 ]
  br i1 %82, label %83, label %87

83:                                               ; preds = %80, %32
  %84 = phi ptr [ %33, %32 ], [ %81, %80 ]
  %85 = getelementptr inbounds %struct.obj_header_data_s, ptr %84, i64 0, i32 2
  store ptr %2, ptr %85, align 8, !tbaa !22
  %86 = getelementptr inbounds %struct.obj_header_s, ptr %84, i64 1
  br label %87

87:                                               ; preds = %32, %80, %83
  %88 = phi ptr [ %86, %83 ], [ null, %32 ], [ null, %80 ]
  ret ptr %88
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @alloc_add_chunk(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 {
  %5 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !82
  %7 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = tail call ptr %8(ptr noundef %6, ptr noundef nonnull @st_chunk, ptr noundef %3) #12
  %10 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 13
  %11 = load i64, ptr %10, align 8, !tbaa !68
  %12 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 14
  %13 = load i64, ptr %12, align 8, !tbaa !101
  %14 = add i64 %13, %11
  %15 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 7
  %16 = load i64, ptr %15, align 8, !tbaa !89
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %32, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 6, i32 5
  %20 = load i64, ptr %19, align 8, !tbaa !102
  %21 = add i64 %20, %1
  store i64 %21, ptr %19, align 8, !tbaa !102
  %22 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 6, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !84
  %24 = icmp ult i64 %16, %23
  br i1 %24, label %25, label %160

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 6, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !85
  %28 = icmp eq ptr %27, null
  br i1 %28, label %160, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 6, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !103
  store i32 %31, ptr %27, align 4, !tbaa !51
  br label %32

32:                                               ; preds = %29, %4
  %33 = icmp ult i64 %1, 4294967296
  br i1 %33, label %41, label %34

34:                                               ; preds = %32, %34
  %35 = phi i32 [ %39, %34 ], [ 1, %32 ]
  %36 = phi i64 [ %38, %34 ], [ %1, %32 ]
  %37 = add nuw i64 %36, 1
  %38 = lshr i64 %37, 1
  %39 = shl i32 %35, 1
  %40 = icmp ult i64 %36, 8589934591
  br i1 %40, label %41, label %34, !llvm.loop !104

41:                                               ; preds = %34, %32
  %42 = phi i64 [ %1, %32 ], [ %38, %34 ]
  %43 = phi i32 [ 1, %32 ], [ %39, %34 ]
  %44 = trunc i64 %42 to i32
  %45 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !105
  %47 = tail call ptr %46(ptr noundef %6, i32 noundef %43, i32 noundef %44, ptr noundef %3) #12
  %48 = icmp eq ptr %9, null
  %49 = icmp eq ptr %47, null
  %50 = select i1 %48, i1 true, i1 %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 11
  %53 = load ptr, ptr %52, align 8, !tbaa !31
  tail call void %53(ptr noundef %6, ptr noundef %47, ptr noundef %3) #12
  %54 = load ptr, ptr %52, align 8, !tbaa !31
  tail call void %54(ptr noundef %6, ptr noundef %9, ptr noundef %3) #12
  %55 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 6, i32 5
  store i64 %1, ptr %55, align 8, !tbaa !102
  br label %160

56:                                               ; preds = %41
  %57 = getelementptr inbounds i8, ptr %47, i64 %1
  store ptr %47, ptr %9, align 8, !tbaa !64
  %58 = getelementptr inbounds i8, ptr %47, i64 24
  %59 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 1
  store ptr %58, ptr %59, align 8, !tbaa !34
  %60 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 2
  store ptr %58, ptr %60, align 8, !tbaa !26
  %61 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 7
  store ptr %57, ptr %61, align 8, !tbaa !38
  %62 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 3
  %63 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %62, i8 0, i64 16, i1 false)
  %64 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  store ptr %58, ptr %64, align 8, !tbaa !75
  %65 = icmp eq i32 %2, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %56
  %67 = add nsw i64 %1, -24
  %68 = icmp ugt i64 %67, 82
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = udiv i64 %67, 76
  %71 = trunc i64 %70 to i32
  %72 = shl nuw i64 %70, 6
  %73 = and i64 %72, 4294967232
  %74 = getelementptr inbounds i8, ptr %58, i64 %73
  %75 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 6
  store ptr %74, ptr %75, align 8, !tbaa !47
  %76 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 16
  store ptr %74, ptr %76, align 8, !tbaa !77
  %77 = shl i32 %71, 3
  %78 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 17
  store i32 %77, ptr %78, align 8, !tbaa !78
  %79 = zext i32 %77 to i64
  %80 = getelementptr inbounds i8, ptr %74, i64 %79
  %81 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 19
  store ptr %80, ptr %81, align 8, !tbaa !79
  %82 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 13
  store ptr %80, ptr %82, align 8, !tbaa !76
  br label %89

83:                                               ; preds = %66, %56
  %84 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 6
  store ptr %57, ptr %84, align 8, !tbaa !47
  %85 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 13
  store ptr null, ptr %85, align 8, !tbaa !76
  %86 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 16
  store ptr null, ptr %86, align 8, !tbaa !77
  %87 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 17
  store i32 0, ptr %87, align 8, !tbaa !78
  %88 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 19
  store ptr null, ptr %88, align 8, !tbaa !79
  br label %89

89:                                               ; preds = %83, %69
  %90 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !47
  %92 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 5
  store ptr %91, ptr %92, align 8, !tbaa !42
  %93 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 13
  %94 = load ptr, ptr %93, align 8, !tbaa !76
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = ptrtoint ptr %91 to i64
  %98 = ptrtoint ptr %47 to i64
  %99 = sub i64 %97, %98
  %100 = add i64 %99, 255
  %101 = ashr i64 %100, 7
  %102 = and i64 %101, -2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %94, i8 0, i64 %102, i1 false)
  br label %103

103:                                              ; preds = %89, %96
  %104 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 14
  store i16 0, ptr %104, align 8, !tbaa !80
  %105 = load ptr, ptr %59, align 8, !tbaa !34
  %106 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 8
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  %108 = icmp eq ptr %107, null
  br i1 %108, label %126, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.chunk_s, ptr %107, i64 0, i32 5
  %111 = load ptr, ptr %110, align 8, !tbaa !42
  %112 = icmp ult ptr %105, %111
  br i1 %112, label %122, label %117

113:                                              ; preds = %117
  %114 = getelementptr inbounds %struct.chunk_s, ptr %120, i64 0, i32 5
  %115 = load ptr, ptr %114, align 8, !tbaa !42
  %116 = icmp ult ptr %105, %115
  br i1 %116, label %122, label %117, !llvm.loop !94

117:                                              ; preds = %109, %113
  %118 = phi ptr [ %120, %113 ], [ %107, %109 ]
  %119 = getelementptr inbounds %struct.chunk_s, ptr %118, i64 0, i32 9
  %120 = load ptr, ptr %119, align 8, !tbaa !5
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %113, !llvm.loop !94

122:                                              ; preds = %113, %109
  %123 = phi i1 [ %108, %109 ], [ %121, %113 ]
  %124 = phi ptr [ %107, %109 ], [ %120, %113 ]
  %125 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 9
  store ptr %124, ptr %125, align 8, !tbaa !39
  br i1 %123, label %129, label %131

126:                                              ; preds = %117, %103
  %127 = phi ptr [ %107, %103 ], [ %120, %117 ]
  %128 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 9
  store ptr %127, ptr %128, align 8, !tbaa !39
  br label %129

129:                                              ; preds = %126, %122
  %130 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 9
  br label %133

131:                                              ; preds = %122
  %132 = getelementptr inbounds %struct.chunk_s, ptr %124, i64 0, i32 8
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi ptr [ %132, %131 ], [ %130, %129 ]
  %135 = load ptr, ptr %134, align 8, !tbaa !5
  store ptr %9, ptr %134, align 8, !tbaa !5
  %136 = getelementptr inbounds %struct.chunk_s, ptr %9, i64 0, i32 8
  store ptr %135, ptr %136, align 8, !tbaa !35
  %137 = icmp eq ptr %135, null
  %138 = getelementptr inbounds %struct.chunk_s, ptr %135, i64 0, i32 9
  %139 = select i1 %137, ptr %106, ptr %138
  store ptr %9, ptr %139, align 8, !tbaa !5
  %140 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 11
  %141 = load ptr, ptr %140, align 8, !tbaa !49
  %142 = icmp eq ptr %141, null
  br i1 %142, label %150, label %143

143:                                              ; preds = %133
  %144 = getelementptr inbounds %struct.chunk_s, ptr %141, i64 0, i32 9
  %145 = load ptr, ptr %144, align 8, !tbaa !39
  %146 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 9
  store ptr %145, ptr %146, align 8, !tbaa !95
  %147 = getelementptr inbounds %struct.chunk_s, ptr %141, i64 0, i32 8
  %148 = load ptr, ptr %147, align 8, !tbaa !35
  %149 = getelementptr inbounds %struct.gs_ref_memory_s, ptr %0, i64 0, i32 10, i32 8
  store ptr %148, ptr %149, align 8, !tbaa !96
  br label %150

150:                                              ; preds = %133, %143
  %151 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %6, i64 0, i32 9
  %152 = load ptr, ptr %151, align 8, !tbaa !98
  %153 = tail call i32 %152(ptr noundef %6, ptr noundef %47) #12
  %154 = load ptr, ptr %151, align 8, !tbaa !98
  %155 = tail call i32 %154(ptr noundef %6, ptr noundef %9) #12
  %156 = add i32 %155, %153
  %157 = zext i32 %156 to i64
  %158 = load i64, ptr %10, align 8, !tbaa !68
  %159 = add i64 %158, %157
  store i64 %159, ptr %10, align 8, !tbaa !68
  br label %160

160:                                              ; preds = %18, %25, %150, %51
  %161 = phi ptr [ null, %51 ], [ %9, %150 ], [ null, %25 ], [ null, %18 ]
  ret ptr %161
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

declare void @gs_ignore_free_object(ptr noundef, ptr noundef, ptr noundef) #10

declare void @gs_ignore_free_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 520}
!10 = !{!"gs_ref_memory_s", !11, i64 0, !6, i64 160, !12, i64 168, !12, i64 172, !6, i64 176, !12, i64 184, !13, i64 192, !14, i64 232, !6, i64 240, !6, i64 248, !15, i64 256, !6, i64 432, !17, i64 440, !14, i64 456, !14, i64 464, !14, i64 472, !18, i64 480, !6, i64 504, !12, i64 512, !6, i64 520, !6, i64 528, !6, i64 536, !19, i64 544, !7, i64 560}
!11 = !{!"gs_memory_procs_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!12 = !{!"int", !7, i64 0}
!13 = !{!"gs_memory_gc_status_s", !14, i64 0, !14, i64 8, !6, i64 16, !12, i64 24, !12, i64 28, !14, i64 32}
!14 = !{!"long", !7, i64 0}
!15 = !{!"chunk_s", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !12, i64 88, !12, i64 92, !6, i64 96, !16, i64 104, !6, i64 112, !6, i64 120, !12, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168}
!16 = !{!"short", !7, i64 0}
!17 = !{!"chunk_locator_s", !6, i64 0, !6, i64 8}
!18 = !{!"lost_", !14, i64 0, !14, i64 8, !14, i64 16}
!19 = !{!"gs_memory_status_s", !14, i64 0, !14, i64 8}
!20 = !{!10, !6, i64 528}
!21 = !{!10, !6, i64 536}
!22 = !{!7, !7, i64 0}
!23 = !{!10, !6, i64 296}
!24 = !{!10, !6, i64 272}
!25 = !{!10, !12, i64 172}
!26 = !{!15, !6, i64 16}
!27 = !{!28, !12, i64 0}
!28 = !{!"gs_memory_struct_type_s", !12, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48}
!29 = !{!30, !6, i64 48}
!30 = !{!"gs_memory_s", !11, i64 0}
!31 = !{!30, !6, i64 88}
!32 = !{!28, !6, i64 48}
!33 = !{!10, !6, i64 240}
!34 = !{!15, !6, i64 8}
!35 = !{!15, !6, i64 64}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!15, !6, i64 56}
!39 = !{!15, !6, i64 72}
!40 = distinct !{!40, !37}
!41 = !{!15, !12, i64 88}
!42 = !{!15, !6, i64 40}
!43 = !{!10, !6, i64 440}
!44 = !{!10, !6, i64 448}
!45 = !{!17, !6, i64 8}
!46 = !{!10, !14, i64 480}
!47 = !{!15, !6, i64 48}
!48 = !{!10, !12, i64 168}
!49 = !{!10, !6, i64 432}
!50 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 8, !5, i64 40, i64 8, !5, i64 48, i64 8, !5, i64 56, i64 8, !5, i64 64, i64 8, !5, i64 72, i64 8, !5, i64 80, i64 8, !5, i64 88, i64 4, !51, i64 92, i64 4, !51, i64 96, i64 8, !5, i64 104, i64 2, !52, i64 112, i64 8, !5, i64 120, i64 8, !5, i64 128, i64 4, !51, i64 136, i64 8, !5, i64 144, i64 8, !5, i64 152, i64 8, !5, i64 160, i64 8, !5, i64 168, i64 8, !5}
!51 = !{!12, !12, i64 0}
!52 = !{!16, !16, i64 0}
!53 = !{!30, !6, i64 96}
!54 = !{!30, !6, i64 120}
!55 = !{!10, !14, i64 496}
!56 = !{!57, !6, i64 8}
!57 = !{!"gs_gc_root_s", !6, i64 0, !6, i64 8, !6, i64 16}
!58 = !{!57, !6, i64 16}
!59 = !{!10, !6, i64 504}
!60 = !{!57, !6, i64 0}
!61 = distinct !{!61, !37}
!62 = !{!10, !14, i64 488}
!63 = !{!15, !6, i64 80}
!64 = !{!15, !6, i64 0}
!65 = distinct !{!65, !37}
!66 = distinct !{!66, !37}
!67 = distinct !{!67, !37}
!68 = !{!10, !14, i64 456}
!69 = !{!10, !14, i64 552}
!70 = !{!19, !14, i64 8}
!71 = !{!10, !14, i64 544}
!72 = !{!19, !14, i64 0}
!73 = !{!30, !6, i64 24}
!74 = !{!30, !6, i64 8}
!75 = !{!15, !6, i64 136}
!76 = !{!15, !6, i64 96}
!77 = !{!15, !6, i64 120}
!78 = !{!15, !12, i64 128}
!79 = !{!15, !6, i64 144}
!80 = !{!15, !16, i64 104}
!81 = !{i64 0, i64 8, !5, i64 8, i64 8, !5, i64 16, i64 8, !5, i64 24, i64 8, !5, i64 32, i64 8, !5, i64 40, i64 8, !5, i64 48, i64 8, !5, i64 56, i64 8, !5, i64 64, i64 8, !5, i64 72, i64 8, !5, i64 80, i64 8, !5, i64 88, i64 8, !5, i64 96, i64 8, !5, i64 104, i64 8, !5, i64 112, i64 8, !5, i64 120, i64 8, !5, i64 128, i64 8, !5, i64 136, i64 8, !5, i64 144, i64 8, !5, i64 152, i64 8, !5}
!82 = !{!10, !6, i64 160}
!83 = !{!10, !14, i64 192}
!84 = !{!10, !14, i64 200}
!85 = !{!10, !6, i64 208}
!86 = !{!10, !12, i64 220}
!87 = !{!10, !12, i64 348}
!88 = !{!10, !6, i64 248}
!89 = !{!10, !14, i64 232}
!90 = !{!10, !12, i64 512}
!91 = !{!10, !14, i64 472}
!92 = !{i64 0, i64 8, !93, i64 8, i64 8, !93, i64 16, i64 8, !5, i64 24, i64 4, !51, i64 28, i64 4, !51, i64 32, i64 8, !93}
!93 = !{!14, !14, i64 0}
!94 = distinct !{!94, !37}
!95 = !{!10, !6, i64 328}
!96 = !{!10, !6, i64 320}
!97 = !{!15, !12, i64 92}
!98 = !{!30, !6, i64 72}
!99 = !{!17, !6, i64 0}
!100 = distinct !{!100, !37}
!101 = !{!10, !14, i64 464}
!102 = !{!10, !14, i64 224}
!103 = !{!10, !12, i64 216}
!104 = distinct !{!104, !37}
!105 = !{!30, !6, i64 40}
